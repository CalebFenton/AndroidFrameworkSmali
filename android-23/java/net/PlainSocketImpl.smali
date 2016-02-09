.class public Ljava/net/PlainSocketImpl;
.super Ljava/net/SocketImpl;
.source "PlainSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/PlainSocketImpl$PlainSocketInputStream;,
        Ljava/net/PlainSocketImpl$PlainSocketOutputStream;
    }
.end annotation


# static fields
.field private static lastConnectedAddress:Ljava/net/InetAddress;

.field private static lastConnectedPort:I


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private proxy:Ljava/net/Proxy;

.field private shutdownInput:Z

.field private streaming:Z


# direct methods
.method static synthetic -wrap0(Ljava/net/PlainSocketImpl;[BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/net/PlainSocketImpl;->read([BII)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/net/PlainSocketImpl;[BII)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/net/PlainSocketImpl;->write([BII)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 66
    new-instance v0, Ljava/io/FileDescriptor;

    #@2
    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    #@5
    invoke-direct {p0, v0}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    #@8
    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    #@3
    .line 45
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    #@6
    .line 51
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@c
    .line 54
    iput-object p1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@e
    .line 55
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 56
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@16
    const-string/jumbo v1, "close"

    #@19
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@1c
    .line 53
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "localport"    # I
    .param p3, "addr"    # Ljava/net/InetAddress;
    .param p4, "port"    # I

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    #@3
    .line 45
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    #@6
    .line 51
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@c
    .line 70
    iput-object p1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@e
    .line 71
    iput p2, p0, Ljava/net/PlainSocketImpl;->localport:I

    #@10
    .line 72
    iput-object p3, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    #@12
    .line 73
    iput p4, p0, Ljava/net/PlainSocketImpl;->port:I

    #@14
    .line 74
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 75
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@1c
    const-string/jumbo v1, "close"

    #@1f
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@22
    .line 69
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;

    #@0
    .prologue
    .line 61
    new-instance v0, Ljava/io/FileDescriptor;

    #@2
    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    #@5
    invoke-direct {p0, v0}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    #@8
    .line 62
    iput-object p1, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    #@a
    .line 60
    return-void
.end method

.method private checkNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 116
    new-instance v0, Ljava/net/SocketException;

    #@a
    const-string/jumbo v1, "Socket is closed"

    #@d
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 114
    :cond_0
    return-void
.end method

.method private connect(Ljava/net/InetAddress;II)V
    .locals 2
    .param p1, "anAddr"    # Ljava/net/InetAddress;
    .param p2, "aPort"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    #@9
    move-result-object v0

    #@a
    .line 180
    .local v0, "normalAddr":Ljava/net/InetAddress;
    :goto_0
    iget-boolean v1, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    #@c
    if-eqz v1, :cond_1

    #@e
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->usingSocks()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 181
    const/4 v1, 0x0

    #@15
    invoke-direct {p0, p1, p2, v1}, Ljava/net/PlainSocketImpl;->socksConnect(Ljava/net/InetAddress;II)V

    #@18
    .line 185
    :goto_1
    iput-object v0, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    #@1a
    .line 186
    iput p2, p0, Ljava/net/PlainSocketImpl;->port:I

    #@1c
    .line 178
    return-void

    #@1d
    .line 179
    .end local v0    # "normalAddr":Ljava/net/InetAddress;
    :cond_0
    move-object v0, p1

    #@1e
    .restart local v0    # "normalAddr":Ljava/net/InetAddress;
    goto :goto_0

    #@1f
    .line 183
    :cond_1
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@21
    invoke-static {v1, v0, p2, p3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V

    #@24
    goto :goto_1
.end method

.method private read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v9, -0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 474
    if-nez p3, :cond_0

    #@5
    .line 475
    return v5

    #@6
    .line 477
    :cond_0
    array-length v1, p1

    #@7
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@a
    .line 478
    iget-boolean v1, p0, Ljava/net/PlainSocketImpl;->shutdownInput:Z

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 479
    return v9

    #@f
    .line 481
    :cond_1
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@11
    const/4 v6, 0x0

    #@12
    move-object v2, p1

    #@13
    move v3, p2

    #@14
    move v4, p3

    #@15
    move v7, v5

    #@16
    invoke-static/range {v0 .. v7}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    #@19
    move-result v8

    #@1a
    .line 483
    .local v8, "readCount":I
    if-nez v8, :cond_2

    #@1c
    .line 484
    new-instance v0, Ljava/net/SocketTimeoutException;

    #@1e
    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    #@21
    throw v0

    #@22
    .line 487
    :cond_2
    if-ne v8, v9, :cond_3

    #@24
    .line 488
    iput-boolean v0, p0, Ljava/net/PlainSocketImpl;->shutdownInput:Z

    #@26
    .line 490
    :cond_3
    return v8
.end method

.method private socksBind()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 382
    :try_start_0
    iget-object v3, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@3
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    #@6
    move-result-object v4

    #@7
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerPort()I

    #@a
    move-result v5

    #@b
    invoke-static {v3, v4, v5}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 388
    sget-object v3, Ljava/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    #@10
    if-nez v3, :cond_0

    #@12
    .line 389
    new-instance v3, Ljava/net/SocketException;

    #@14
    const-string/jumbo v4, "Invalid SOCKS client"

    #@17
    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v3

    #@1b
    .line 383
    :catch_0
    move-exception v0

    #@1c
    .line 384
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    #@1e
    const-string/jumbo v4, "Unable to connect to SOCKS server"

    #@21
    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw v3

    #@25
    .line 393
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v3, Ljava/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    #@27
    .line 394
    sget v4, Ljava/net/PlainSocketImpl;->lastConnectedPort:I

    #@29
    .line 393
    const/4 v5, 0x2

    #@2a
    invoke-direct {p0, v5, v3, v4}, Ljava/net/PlainSocketImpl;->socksSendRequest(ILjava/net/InetAddress;I)V

    #@2d
    .line 395
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksReadReply()Ljava/net/Socks4Message;

    #@30
    move-result-object v1

    #@31
    .line 397
    .local v1, "reply":Ljava/net/Socks4Message;
    invoke-virtual {v1}, Ljava/net/Socks4Message;->getCommandOrResult()I

    #@34
    move-result v3

    #@35
    const/16 v4, 0x5a

    #@37
    if-eq v3, v4, :cond_1

    #@39
    .line 398
    new-instance v3, Ljava/io/IOException;

    #@3b
    invoke-virtual {v1}, Ljava/net/Socks4Message;->getCommandOrResult()I

    #@3e
    move-result v4

    #@3f
    invoke-virtual {v1, v4}, Ljava/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@46
    throw v3

    #@47
    .line 403
    :cond_1
    invoke-virtual {v1}, Ljava/net/Socks4Message;->getIP()I

    #@4a
    move-result v3

    #@4b
    if-nez v3, :cond_2

    #@4d
    .line 404
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    #@50
    move-result-object v3

    #@51
    iput-object v3, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    #@53
    .line 413
    :goto_0
    invoke-virtual {v1}, Ljava/net/Socks4Message;->getPort()I

    #@56
    move-result v3

    #@57
    iput v3, p0, Ljava/net/PlainSocketImpl;->localport:I

    #@59
    .line 380
    return-void

    #@5a
    .line 409
    :cond_2
    const/4 v3, 0x4

    #@5b
    new-array v2, v3, [B

    #@5d
    .line 410
    .local v2, "replyBytes":[B
    invoke-virtual {v1}, Ljava/net/Socks4Message;->getIP()I

    #@60
    move-result v3

    #@61
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@63
    invoke-static {v2, v6, v3, v4}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    #@66
    .line 411
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    #@69
    move-result-object v3

    #@6a
    iput-object v3, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    #@6c
    goto :goto_0
.end method

.method private socksConnect(Ljava/net/InetAddress;II)V
    .locals 4
    .param p1, "applicationServerAddress"    # Ljava/net/InetAddress;
    .param p2, "applicationServerPort"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    :try_start_0
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    #@5
    move-result-object v2

    #@6
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerPort()I

    #@9
    move-result v3

    #@a
    invoke-static {v1, v2, v3, p3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 322
    invoke-direct {p0, p1, p2}, Ljava/net/PlainSocketImpl;->socksRequestConnection(Ljava/net/InetAddress;I)V

    #@10
    .line 324
    sput-object p1, Ljava/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    #@12
    .line 325
    sput p2, Ljava/net/PlainSocketImpl;->lastConnectedPort:I

    #@14
    .line 315
    return-void

    #@15
    .line 318
    :catch_0
    move-exception v0

    #@16
    .line 319
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/net/SocketException;

    #@18
    const-string/jumbo v2, "SOCKS connection failed"

    #@1b
    invoke-direct {v1, v2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1e
    throw v1
.end method

.method private socksGetServerAddress()Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 307
    iget-object v2, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    #@2
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/net/InetSocketAddress;

    #@8
    .line 308
    .local v1, "socketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@b
    move-result-object v0

    #@c
    .line 309
    .local v0, "address":Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    #@e
    .end local v0    # "address":Ljava/net/InetAddress;
    :goto_0
    return-object v0

    #@f
    .restart local v0    # "address":Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@16
    move-result-object v0

    #@17
    goto :goto_0
.end method

.method private socksGetServerPort()I
    .locals 2

    #@0
    .prologue
    .line 296
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    #@2
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/net/InetSocketAddress;

    #@8
    .line 297
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@b
    move-result v1

    #@c
    return v1
.end method

.method private socksReadReply()Ljava/net/Socks4Message;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x8

    #@2
    .line 433
    new-instance v2, Ljava/net/Socks4Message;

    #@4
    invoke-direct {v2}, Ljava/net/Socks4Message;-><init>()V

    #@7
    .line 434
    .local v2, "reply":Ljava/net/Socks4Message;
    const/4 v0, 0x0

    #@8
    .line 435
    .local v0, "bytesRead":I
    :goto_0
    if-ge v0, v6, :cond_0

    #@a
    .line 436
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->getInputStream()Ljava/io/InputStream;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2}, Ljava/net/Socks4Message;->getBytes()[B

    #@11
    move-result-object v4

    #@12
    .line 437
    rsub-int/lit8 v5, v0, 0x8

    #@14
    .line 436
    invoke-virtual {v3, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    #@17
    move-result v1

    #@18
    .line 438
    .local v1, "count":I
    const/4 v3, -0x1

    #@19
    if-ne v1, v3, :cond_1

    #@1b
    .line 443
    .end local v1    # "count":I
    :cond_0
    if-eq v6, v0, :cond_2

    #@1d
    .line 444
    new-instance v3, Ljava/net/SocketException;

    #@1f
    const-string/jumbo v4, "Malformed reply from SOCKS server"

    #@22
    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@25
    throw v3

    #@26
    .line 441
    .restart local v1    # "count":I
    :cond_1
    add-int/2addr v0, v1

    #@27
    goto :goto_0

    #@28
    .line 446
    .end local v1    # "count":I
    :cond_2
    return-object v2
.end method

.method private socksRequestConnection(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "applicationServerAddress"    # Ljava/net/InetAddress;
    .param p2, "applicationServerPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, v1, p1, p2}, Ljava/net/PlainSocketImpl;->socksSendRequest(ILjava/net/InetAddress;I)V

    #@4
    .line 336
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksReadReply()Ljava/net/Socks4Message;

    #@7
    move-result-object v0

    #@8
    .line 337
    .local v0, "reply":Ljava/net/Socks4Message;
    invoke-virtual {v0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    #@b
    move-result v1

    #@c
    const/16 v2, 0x5a

    #@e
    if-eq v1, v2, :cond_0

    #@10
    .line 338
    new-instance v1, Ljava/io/IOException;

    #@12
    invoke-virtual {v0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    #@15
    move-result v2

    #@16
    invoke-virtual {v0, v2}, Ljava/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 333
    :cond_0
    return-void
.end method

.method private socksSendRequest(ILjava/net/InetAddress;I)V
    .locals 5
    .param p1, "command"    # I
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 420
    new-instance v0, Ljava/net/Socks4Message;

    #@2
    invoke-direct {v0}, Ljava/net/Socks4Message;-><init>()V

    #@5
    .line 421
    .local v0, "request":Ljava/net/Socks4Message;
    invoke-virtual {v0, p1}, Ljava/net/Socks4Message;->setCommandOrResult(I)V

    #@8
    .line 422
    invoke-virtual {v0, p3}, Ljava/net/Socks4Message;->setPort(I)V

    #@b
    .line 423
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/net/Socks4Message;->setIP([B)V

    #@12
    .line 424
    const-string/jumbo v1, "default"

    #@15
    invoke-virtual {v0, v1}, Ljava/net/Socks4Message;->setUserId(Ljava/lang/String;)V

    #@18
    .line 426
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0}, Ljava/net/Socks4Message;->getBytes()[B

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v0}, Ljava/net/Socks4Message;->getLength()I

    #@23
    move-result v3

    #@24
    const/4 v4, 0x0

    #@25
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    #@28
    .line 419
    return-void
.end method

.method private usingSocks()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 111
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    #@7
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@a
    move-result-object v1

    #@b
    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@d
    if-ne v1, v2, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method private write([BII)V
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 497
    array-length v0, p1

    #@2
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@5
    .line 498
    iget-boolean v0, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 499
    :goto_0
    if-lez p3, :cond_1

    #@b
    .line 500
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@d
    const/4 v5, 0x0

    #@e
    move-object v1, p1

    #@f
    move v2, p2

    #@10
    move v3, p3

    #@11
    move v6, v4

    #@12
    invoke-static/range {v0 .. v6}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    #@15
    move-result v7

    #@16
    .line 501
    .local v7, "bytesWritten":I
    sub-int/2addr p3, v7

    #@17
    .line 502
    add-int/2addr p2, v7

    #@18
    goto :goto_0

    #@19
    .line 508
    .end local v7    # "bytesWritten":I
    :cond_0
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@1b
    iget-object v5, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    #@1d
    iget v6, p0, Ljava/net/PlainSocketImpl;->port:I

    #@1f
    move-object v1, p1

    #@20
    move v2, p2

    #@21
    move v3, p3

    #@22
    invoke-static/range {v0 .. v6}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    #@25
    .line 496
    :cond_1
    return-void
.end method


# virtual methods
.method protected accept(Ljava/net/SocketImpl;)V
    .locals 5
    .param p1, "newImpl"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->usingSocks()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    move-object v3, p1

    #@7
    .line 82
    check-cast v3, Ljava/net/PlainSocketImpl;

    #@9
    invoke-direct {v3}, Ljava/net/PlainSocketImpl;->socksBind()V

    #@c
    .line 83
    check-cast p1, Ljava/net/PlainSocketImpl;

    #@e
    .end local p1    # "newImpl":Ljava/net/SocketImpl;
    invoke-virtual {p1}, Ljava/net/PlainSocketImpl;->socksAccept()V

    #@11
    .line 84
    return-void

    #@12
    .line 88
    .restart local p1    # "newImpl":Ljava/net/SocketImpl;
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    #@14
    invoke-direct {v2}, Ljava/net/InetSocketAddress;-><init>()V

    #@17
    .line 89
    .local v2, "peerAddress":Ljava/net/InetSocketAddress;
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@19
    iget-object v4, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@1b
    invoke-interface {v3, v4, v2}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    #@1e
    move-result-object v0

    #@1f
    .line 93
    .local v0, "clientFd":Ljava/io/FileDescriptor;
    iget-object v3, p1, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    #@21
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    #@24
    move-result v4

    #@25
    invoke-virtual {v3, v4}, Ljava/io/FileDescriptor;->setInt$(I)V

    #@28
    .line 95
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@2b
    move-result-object v3

    #@2c
    iput-object v3, p1, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    #@2e
    .line 96
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@31
    move-result v3

    #@32
    iput v3, p1, Ljava/net/SocketImpl;->port:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 105
    const/4 v3, 0x0

    #@35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v3

    #@39
    const/16 v4, 0x1006

    #@3b
    invoke-virtual {p1, v4, v3}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    #@3e
    .line 107
    iget-object v3, p1, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    #@40
    invoke-static {v3}, Llibcore/io/IoBridge;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    #@43
    move-result v3

    #@44
    iput v3, p1, Ljava/net/SocketImpl;->localport:I

    #@46
    .line 80
    return-void

    #@47
    .line 97
    .end local v0    # "clientFd":Ljava/io/FileDescriptor;
    .end local v2    # "peerAddress":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v1

    #@48
    .line 98
    .local v1, "errnoException":Landroid/system/ErrnoException;
    iget v3, v1, Landroid/system/ErrnoException;->errno:I

    #@4a
    sget v4, Landroid/system/OsConstants;->EAGAIN:I

    #@4c
    if-ne v3, v4, :cond_1

    #@4e
    .line 99
    new-instance v3, Ljava/net/SocketTimeoutException;

    #@50
    invoke-direct {v3, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/Throwable;)V

    #@53
    throw v3

    #@54
    .line 101
    :cond_1
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@57
    move-result-object v3

    #@58
    throw v3
.end method

.method protected declared-synchronized available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 122
    :try_start_0
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->checkNotClosed()V

    #@4
    .line 125
    iget-boolean v0, p0, Ljava/net/PlainSocketImpl;->shutdownInput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 126
    const/4 v0, 0x0

    #@9
    monitor-exit p0

    #@a
    return v0

    #@b
    .line 128
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@d
    invoke-static {v0}, Llibcore/io/IoBridge;->available(Ljava/io/FileDescriptor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    move-result v0

    #@11
    monitor-exit p0

    #@12
    return v0

    #@13
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method protected bind(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@5
    .line 133
    if-eqz p2, :cond_0

    #@7
    .line 134
    iput p2, p0, Ljava/net/PlainSocketImpl;->localport:I

    #@9
    .line 131
    :goto_0
    return-void

    #@a
    .line 136
    :cond_0
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@c
    invoke-static {v0}, Llibcore/io/IoBridge;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    #@f
    move-result v0

    #@10
    iput v0, p0, Ljava/net/PlainSocketImpl;->localport:I

    #@12
    goto :goto_0
.end method

.method protected declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 147
    :try_start_0
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@3
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@6
    .line 148
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@8
    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 146
    return-void

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method protected connect(Ljava/lang/String;I)V
    .locals 1
    .param p1, "aHost"    # Ljava/lang/String;
    .param p2, "aPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;I)V

    #@7
    .line 157
    return-void
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "anAddr"    # Ljava/net/InetAddress;
    .param p2, "aPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;II)V

    #@4
    .line 162
    return-void
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 3
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 451
    check-cast v0, Ljava/net/InetSocketAddress;

    #@3
    .line 452
    .local v0, "inetAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@a
    move-result v2

    #@b
    invoke-direct {p0, v1, v2, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;II)V

    #@e
    .line 450
    return-void
.end method

.method protected create(Z)V
    .locals 1
    .param p1, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    iput-boolean p1, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    #@2
    .line 198
    invoke-static {p1}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@8
    .line 196
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 204
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 206
    :cond_0
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 208
    invoke-super {p0}, Ljava/net/SocketImpl;->finalize()V

    #@f
    .line 201
    return-void

    #@10
    .line 207
    :catchall_0
    move-exception v0

    #@11
    .line 208
    invoke-super {p0}, Ljava/net/SocketImpl;->finalize()V

    #@14
    .line 207
    throw v0
.end method

.method protected declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 213
    :try_start_0
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->checkNotClosed()V

    #@4
    .line 214
    new-instance v0, Ljava/net/PlainSocketImpl$PlainSocketInputStream;

    #@6
    invoke-direct {v0, p0}, Ljava/net/PlainSocketImpl$PlainSocketInputStream;-><init>(Ljava/net/PlainSocketImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 1
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1}, Llibcore/io/IoBridge;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 246
    :try_start_0
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->checkNotClosed()V

    #@4
    .line 247
    new-instance v0, Ljava/net/PlainSocketImpl$PlainSocketOutputStream;

    #@6
    invoke-direct {v0, p0}, Ljava/net/PlainSocketImpl$PlainSocketOutputStream;-><init>(Ljava/net/PlainSocketImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method protected listen(I)V
    .locals 3
    .param p1, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 272
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->usingSocks()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 275
    return-void

    #@7
    .line 278
    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@9
    iget-object v2, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@b
    invoke-interface {v1, v2, p1}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 271
    return-void

    #@f
    .line 279
    :catch_0
    move-exception v0

    #@10
    .line 280
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@13
    move-result-object v1

    #@14
    throw v1
.end method

.method public onBind(Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .param p2, "localPort"    # I

    #@0
    .prologue
    .line 142
    iput p2, p0, Ljava/net/PlainSocketImpl;->localport:I

    #@2
    .line 141
    return-void
.end method

.method public onClose()V
    .locals 1

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@5
    .line 152
    return-void
.end method

.method public onConnect(Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "remoteAddress"    # Ljava/net/InetAddress;
    .param p2, "remotePort"    # I

    #@0
    .prologue
    .line 191
    iput-object p1, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    #@2
    .line 192
    iput p2, p0, Ljava/net/PlainSocketImpl;->port:I

    #@4
    .line 190
    return-void
.end method

.method protected sendUrgentData(I)V
    .locals 9
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 463
    const/4 v0, 0x1

    #@1
    :try_start_0
    new-array v2, v0, [B

    #@3
    int-to-byte v0, p1

    #@4
    const/4 v1, 0x0

    #@5
    aput-byte v0, v2, v1

    #@7
    .line 464
    .local v2, "buffer":[B
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@9
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@b
    sget v5, Landroid/system/OsConstants;->MSG_OOB:I

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    const/4 v6, 0x0

    #@10
    const/4 v7, 0x0

    #@11
    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 461
    return-void

    #@15
    .line 465
    .end local v2    # "buffer":[B
    :catch_0
    move-exception v8

    #@16
    .line 466
    .local v8, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v8}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@19
    move-result-object v0

    #@1a
    throw v0
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 1
    .param p1, "option"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    #@5
    .line 285
    return-void
.end method

.method protected shutdownInput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 357
    const/4 v1, 0x1

    #@1
    iput-boolean v1, p0, Ljava/net/PlainSocketImpl;->shutdownInput:Z

    #@3
    .line 359
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@5
    iget-object v2, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@7
    sget v3, Landroid/system/OsConstants;->SHUT_RD:I

    #@9
    invoke-interface {v1, v2, v3}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 356
    return-void

    #@d
    .line 360
    :catch_0
    move-exception v0

    #@e
    .line 361
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method protected shutdownOutput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 371
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v2, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@4
    sget v3, Landroid/system/OsConstants;->SHUT_WR:I

    #@6
    invoke-interface {v1, v2, v3}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 369
    return-void

    #@a
    .line 372
    :catch_0
    move-exception v0

    #@b
    .line 373
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@e
    move-result-object v1

    #@f
    throw v1
.end method

.method public socksAccept()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 346
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksReadReply()Ljava/net/Socks4Message;

    #@3
    move-result-object v0

    #@4
    .line 347
    .local v0, "reply":Ljava/net/Socks4Message;
    invoke-virtual {v0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    #@7
    move-result v1

    #@8
    const/16 v2, 0x5a

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 348
    new-instance v1, Ljava/io/IOException;

    #@e
    invoke-virtual {v0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    #@11
    move-result v2

    #@12
    invoke-virtual {v0, v2}, Ljava/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 345
    :cond_0
    return-void
.end method

.method protected supportsUrgentData()Z
    .locals 1

    #@0
    .prologue
    .line 457
    const/4 v0, 0x1

    #@1
    return v0
.end method
