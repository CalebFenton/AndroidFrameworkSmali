.class public Landroid/net/netlink/NetlinkSocket;
.super Ljava/lang/Object;
.source "NetlinkSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final DEFAULT_RECV_BUFSIZE:I = 0x2000

.field private static final SOCKET_RECV_BUFSIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "NetlinkSocket"


# instance fields
.field private mAddr:Landroid/system/NetlinkSocketAddress;

.field private final mDescriptor:Ljava/io/FileDescriptor;

.field private mLastRecvTimeoutMs:J

.field private mLastSendTimeoutMs:J


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .param p1, "nlProto"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    sget v0, Landroid/system/OsConstants;->AF_NETLINK:I

    #@5
    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    #@7
    .line 55
    invoke-static {v0, v1, p1}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    #@d
    .line 58
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@f
    .line 59
    iget-object v1, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    #@11
    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@13
    .line 60
    sget v3, Landroid/system/OsConstants;->SO_RCVBUF:I

    #@15
    const/high16 v4, 0x10000

    #@17
    .line 58
    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@1a
    .line 54
    return-void
.end method

.method private checkTimeout(J)V
    .locals 3
    .param p1, "timeoutMs"    # J

    #@0
    .prologue
    .line 98
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Negative timeouts not permitted"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Landroid/system/NetlinkSocketAddress;)V
    .locals 1
    .param p1, "localAddr"    # Landroid/system/NetlinkSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    #@5
    .line 67
    return-void
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@5
    .line 166
    return-void
.end method

.method public connectTo(Landroid/system/NetlinkSocketAddress;)V
    .locals 1
    .param p1, "peerAddr"    # Landroid/system/NetlinkSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    #@5
    .line 72
    return-void
.end method

.method public connectToKernel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 77
    new-instance v0, Landroid/system/NetlinkSocketAddress;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    #@6
    invoke-virtual {p0, v0}, Landroid/net/netlink/NetlinkSocket;->connectTo(Landroid/system/NetlinkSocketAddress;)V

    #@9
    .line 76
    return-void
.end method

.method public getLocalAddress()Landroid/system/NetlinkSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/system/NetlinkSocketAddress;

    #@8
    return-object v0
.end method

.method public recvMessage()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    const-wide/16 v0, 0x0

    #@2
    const/16 v2, 0x2000

    #@4
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/netlink/NetlinkSocket;->recvMessage(IJ)Ljava/nio/ByteBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public recvMessage(IJ)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "bufsize"    # I
    .param p2, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    invoke-direct {p0, p2, p3}, Landroid/net/netlink/NetlinkSocket;->checkTimeout(J)V

    #@3
    .line 113
    iget-object v3, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    #@5
    monitor-enter v3

    #@6
    .line 114
    :try_start_0
    iget-wide v4, p0, Landroid/net/netlink/NetlinkSocket;->mLastRecvTimeoutMs:J

    #@8
    cmp-long v2, v4, p2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 115
    iget-object v2, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    #@e
    .line 116
    sget v4, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@10
    sget v5, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    #@12
    .line 117
    invoke-static {p2, p3}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    #@15
    move-result-object v6

    #@16
    .line 115
    invoke-static {v2, v4, v5, v6}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    #@19
    .line 118
    iput-wide p2, p0, Landroid/net/netlink/NetlinkSocket;->mLastRecvTimeoutMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_0
    monitor-exit v3

    #@1c
    .line 122
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@1f
    move-result-object v0

    #@20
    .line 123
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    #@22
    invoke-static {v2, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    #@25
    move-result v1

    #@26
    .line 124
    .local v1, "length":I
    if-ne v1, p1, :cond_1

    #@28
    .line 125
    const-string/jumbo v2, "NetlinkSocket"

    #@2b
    const-string/jumbo v3, "maximum read"

    #@2e
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 127
    :cond_1
    const/4 v2, 0x0

    #@32
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@35
    .line 128
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@38
    .line 129
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@3f
    .line 130
    return-object v0

    #@40
    .line 113
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "length":I
    :catchall_0
    move-exception v2

    #@41
    monitor-exit v3

    #@42
    throw v2
.end method

.method public recvMessage(J)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    const/16 v0, 0x2000

    #@2
    invoke-virtual {p0, v0, p1, p2}, Landroid/net/netlink/NetlinkSocket;->recvMessage(IJ)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public sendMessage([BII)Z
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    const-wide/16 v4, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/net/netlink/NetlinkSocket;->sendMessage([BIIJ)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public sendMessage([BIIJ)Z
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    invoke-direct {p0, p4, p5}, Landroid/net/netlink/NetlinkSocket;->checkTimeout(J)V

    #@3
    .line 153
    iget-object v1, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    #@5
    monitor-enter v1

    #@6
    .line 154
    :try_start_0
    iget-wide v2, p0, Landroid/net/netlink/NetlinkSocket;->mLastSendTimeoutMs:J

    #@8
    cmp-long v0, v2, p4

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 155
    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    #@e
    .line 156
    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@10
    sget v3, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    #@12
    .line 157
    invoke-static {p4, p5}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    #@15
    move-result-object v4

    #@16
    .line 155
    invoke-static {v0, v2, v3, v4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    #@19
    .line 158
    iput-wide p4, p0, Landroid/net/netlink/NetlinkSocket;->mLastSendTimeoutMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_0
    monitor-exit v1

    #@1c
    .line 162
    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    #@1e
    invoke-static {v0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    #@21
    move-result v0

    #@22
    if-ne p3, v0, :cond_1

    #@24
    const/4 v0, 0x1

    #@25
    :goto_0
    return v0

    #@26
    .line 153
    :catchall_0
    move-exception v0

    #@27
    monitor-exit v1

    #@28
    throw v0

    #@29
    .line 162
    :cond_1
    const/4 v0, 0x0

    #@2a
    goto :goto_0
.end method
