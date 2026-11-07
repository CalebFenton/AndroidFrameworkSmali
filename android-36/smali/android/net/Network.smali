.class public Landroid/net/Network;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Network$NetworkBoundSocketFactory;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o HANDLE_MAGIC:J = 0xcafed00dL

.field private static final greylist-max-o HANDLE_MAGIC_SIZE:I = 0x20

.field private static final blacklist USE_LOCAL_NAMESERVERS_FLAG:I = -0x80000000

.field private static final greylist-max-o httpKeepAlive:Z

.field private static final greylist-max-o httpKeepAliveDurationMs:J

.field private static final greylist-max-o httpMaxConnections:I


# instance fields
.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private volatile greylist-max-o mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

.field private final transient greylist-max-o mPrivateDnsBypass:Z

.field private blacklist mUrlConnectionFactory:Llibcore/net/http/HttpURLConnectionFactory;

.field public final greylist netId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$U1YT_z1oIOJtcwHwLnzqGLPyBqU(Landroid/net/Network;Ljava/lang/String;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/Network;->lambda$openConnection$0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 84
    nop

    .line 85
    const-string v0, "http.keepAlive"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/net/Network;->httpKeepAlive:Z

    .line 87
    sget-boolean v0, Landroid/net/Network;->httpKeepAlive:Z

    if-eqz v0, :cond_20

    const-string v0, "http.maxConnections"

    const-string v1, "5"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    sput v0, Landroid/net/Network;->httpMaxConnections:I

    .line 88
    nop

    .line 89
    const-string v0, "http.keepAliveDuration"

    const-string v1, "300000"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Landroid/net/Network;->httpKeepAliveDurationMs:J

    .line 502
    new-instance v0, Landroid/net/Network$1;

    invoke-direct {v0}, Landroid/net/Network$1;-><init>()V

    sput-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>(I)V
    .registers 3
    .param p1, "netId"    # I

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/Network;-><init>(IZ)V

    .line 118
    return-void
.end method

.method public constructor blacklist <init>(IZ)V
    .registers 4
    .param p1, "netId"    # I
    .param p2, "privateDnsBypass"    # Z

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    .line 124
    iput p1, p0, Landroid/net/Network;->netId:I

    .line 125
    iput-boolean p2, p0, Landroid/net/Network;->mPrivateDnsBypass:Z

    .line 126
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Network;)V
    .registers 4
    .param p1, "that"    # Landroid/net/Network;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 133
    iget v0, p1, Landroid/net/Network;->netId:I

    iget-boolean v1, p1, Landroid/net/Network;->mPrivateDnsBypass:Z

    invoke-direct {p0, v0, v1}, Landroid/net/Network;-><init>(IZ)V

    .line 134
    return-void
.end method

.method private static blacklist createUrlConnectionFactory(Llibcore/net/http/Dns;)Llibcore/net/http/HttpURLConnectionFactory;
    .registers 6
    .param p0, "dnsLookup"    # Llibcore/net/http/Dns;

    .line 302
    invoke-static {}, Llibcore/net/http/HttpURLConnectionFactory;->createInstance()Llibcore/net/http/HttpURLConnectionFactory;

    move-result-object v0

    .line 303
    .local v0, "urlConnectionFactory":Llibcore/net/http/HttpURLConnectionFactory;
    invoke-virtual {v0, p0}, Llibcore/net/http/HttpURLConnectionFactory;->setDns(Llibcore/net/http/Dns;)V

    .line 305
    sget v1, Landroid/net/Network;->httpMaxConnections:I

    sget-wide v2, Landroid/net/Network;->httpKeepAliveDurationMs:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Llibcore/net/http/HttpURLConnectionFactory;->setNewConnectionPool(IJLjava/util/concurrent/TimeUnit;)V

    .line 307
    return-object v0
.end method

.method public static whitelist fromNetworkHandle(J)Landroid/net/Network;
    .registers 6
    .param p0, "networkHandle"    # J

    .line 453
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_34

    .line 457
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    const-wide v2, 0xcafed00dL

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    .line 461
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    .line 462
    .local v0, "netIdForResolv":I
    new-instance v1, Landroid/net/Network;

    const v2, 0x7fffffff

    and-int/2addr v2, v0

    const/high16 v3, -0x80000000

    and-int/2addr v3, v0

    if-eqz v3, :cond_27

    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    invoke-direct {v1, v2, v3}, Landroid/net/Network;-><init>(IZ)V

    return-object v1

    .line 458
    .end local v0    # "netIdForResolv":I
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value passed to fromNetworkHandle() is not a network handle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network.fromNetworkHandle refusing to instantiate NETID_UNSET Network."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic blacklist lambda$openConnection$0(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 366
    invoke-virtual {p0, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist bindSocket(Ljava/io/FileDescriptor;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    .line 422
    .local v0, "peer":Ljava/net/SocketAddress;
    move-object v1, v0

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 423
    .local v1, "inetPeer":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-eqz v2, :cond_12

    .end local v0    # "peer":Ljava/net/SocketAddress;
    .end local v1    # "inetPeer":Ljava/net/InetAddress;
    goto :goto_2a

    .line 426
    .restart local v0    # "peer":Ljava/net/SocketAddress;
    .restart local v1    # "inetPeer":Ljava/net/InetAddress;
    :cond_12
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Socket is connected"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/Network;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    throw v2
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_1a} :catch_23
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_1a} :catch_1a

    .line 433
    .end local v0    # "peer":Ljava/net/SocketAddress;
    .end local v1    # "inetPeer":Ljava/net/InetAddress;
    .restart local p0    # "this":Landroid/net/Network;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    :catch_1a
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Only AF_INET/AF_INET6 sockets supported"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_23
    move-exception v0

    .line 430
    .local v0, "e":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->ENOTCONN:I

    if-ne v1, v2, :cond_54

    .line 436
    .end local v0    # "e":Landroid/system/ErrnoException;
    :goto_2a
    nop

    .line 438
    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-static {p1, v0}, Landroid/net/NetworkUtils;->bindSocketToNetwork(Ljava/io/FileDescriptor;I)I

    move-result v0

    .line 439
    .local v0, "err":I
    if-nez v0, :cond_34

    .line 444
    return-void

    .line 441
    :cond_34
    new-instance v1, Landroid/system/ErrnoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding socket to network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    neg-int v3, v0

    invoke-direct {v1, v2, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 442
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1

    .line 431
    .local v0, "e":Landroid/system/ErrnoException;
    :cond_54
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method public whitelist bindSocket(Ljava/net/DatagramSocket;)V
    .registers 5
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    .line 390
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 391
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_7
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    .line 392
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 393
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_13
    return-void

    .line 390
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_14
    move-exception v1

    if-eqz v0, :cond_1f

    :try_start_17
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    throw v1
.end method

.method public whitelist bindSocket(Ljava/net/Socket;)V
    .registers 5
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    invoke-virtual {p1}, Ljava/net/Socket;->getReuseAddress()Z

    .line 408
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 409
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_7
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    .line 410
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 411
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_13
    return-void

    .line 408
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_14
    move-exception v1

    if-eqz v0, :cond_1f

    :try_start_17
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    throw v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 517
    instance-of v0, p1, Landroid/net/Network;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 518
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/Network;

    .line 519
    .local v0, "other":Landroid/net/Network;
    iget v2, p0, Landroid/net/Network;->netId:I

    iget v3, v0, Landroid/net/Network;->netId:I

    if-ne v2, v3, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public whitelist getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 3
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v0

    invoke-static {p1, v0}, Ljava/net/InetAddress;->getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 3
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v0

    invoke-static {p1, v0}, Ljava/net/InetAddress;->getByNameOnNet(Ljava/lang/String;I)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 180
    iget v0, p0, Landroid/net/Network;->netId:I

    return v0
.end method

.method public greylist-max-o getNetIdForResolv()I
    .registers 3

    .line 192
    iget-boolean v0, p0, Landroid/net/Network;->mPrivateDnsBypass:Z

    if-eqz v0, :cond_a

    .line 193
    const/high16 v0, -0x80000000

    iget v1, p0, Landroid/net/Network;->netId:I

    or-int/2addr v0, v1

    goto :goto_c

    .line 194
    :cond_a
    iget v0, p0, Landroid/net/Network;->netId:I

    .line 192
    :goto_c
    return v0
.end method

.method public whitelist getNetworkHandle()J
    .registers 5

    .line 488
    iget v0, p0, Landroid/net/Network;->netId:I

    if-nez v0, :cond_7

    .line 489
    const-wide/16 v0, 0x0

    return-wide v0

    .line 491
    :cond_7
    invoke-virtual {p0}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xcafed00dL

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getPrivateDnsBypassingCopy()Landroid/net/Network;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 170
    new-instance v0, Landroid/net/Network;

    iget v1, p0, Landroid/net/Network;->netId:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/Network;-><init>(IZ)V

    return-object v0
.end method

.method public whitelist getSocketFactory()Ljavax/net/SocketFactory;
    .registers 4

    .line 288
    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    if-nez v0, :cond_18

    .line 289
    iget-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_7
    iget-object v1, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    if-nez v1, :cond_13

    .line 291
    new-instance v1, Landroid/net/Network$NetworkBoundSocketFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/Network$NetworkBoundSocketFactory;-><init>(Landroid/net/Network;Landroid/net/Network-IA;)V

    iput-object v1, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    .line 293
    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1

    .line 295
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 524
    iget v0, p0, Landroid/net/Network;->netId:I

    mul-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public whitelist openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 6
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 321
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_18

    .line 325
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v1

    .line 327
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v1, :cond_11

    .line 328
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->makeProxy()Ljava/net/Proxy;

    move-result-object v2

    .local v2, "proxy":Ljava/net/Proxy;
    goto :goto_13

    .line 330
    .end local v2    # "proxy":Ljava/net/Proxy;
    :cond_11
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 332
    .restart local v2    # "proxy":Ljava/net/Proxy;
    :goto_13
    invoke-virtual {p0, p1, v2}, Landroid/net/Network;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    return-object v3

    .line 322
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v2    # "proxy":Ljava/net/Proxy;
    :cond_18
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No ConnectivityManager yet constructed, please construct one"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    if-eqz p2, :cond_23

    .line 364
    iget-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_5
    iget-object v1, p0, Landroid/net/Network;->mUrlConnectionFactory:Llibcore/net/http/HttpURLConnectionFactory;

    if-nez v1, :cond_14

    .line 366
    new-instance v1, Landroid/net/Network$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/net/Network$$ExternalSyntheticLambda0;-><init>(Landroid/net/Network;)V

    .line 367
    .local v1, "dnsLookup":Llibcore/net/http/Dns;
    invoke-static {v1}, Landroid/net/Network;->createUrlConnectionFactory(Llibcore/net/http/Dns;)Llibcore/net/http/HttpURLConnectionFactory;

    move-result-object v2

    iput-object v2, p0, Landroid/net/Network;->mUrlConnectionFactory:Llibcore/net/http/HttpURLConnectionFactory;

    .line 369
    .end local v1    # "dnsLookup":Llibcore/net/http/Dns;
    :cond_14
    iget-object v1, p0, Landroid/net/Network;->mUrlConnectionFactory:Llibcore/net/http/HttpURLConnectionFactory;

    .line 370
    .local v1, "urlConnectionFactory":Llibcore/net/http/HttpURLConnectionFactory;
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_20

    .line 371
    invoke-virtual {p0}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    .line 372
    .local v0, "socketFactory":Ljavax/net/SocketFactory;
    invoke-virtual {v1, p1, v0, p2}, Llibcore/net/http/HttpURLConnectionFactory;->openConnection(Ljava/net/URL;Ljavax/net/SocketFactory;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    return-object v2

    .line 370
    .end local v0    # "socketFactory":Ljavax/net/SocketFactory;
    .end local v1    # "urlConnectionFactory":Llibcore/net/http/HttpURLConnectionFactory;
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1

    .line 347
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxy is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 529
    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 499
    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    return-void
.end method
