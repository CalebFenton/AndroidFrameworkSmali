.class public Landroid/net/Network;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Network$NetworkBoundSocketFactory;,
        Landroid/net/Network$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation
.end field

.field private static final httpKeepAlive:Z

.field private static final httpKeepAliveDurationMs:J

.field private static final httpMaxConnections:I


# instance fields
.field private volatile mConnectionPool:Lcom/android/okhttp/ConnectionPool;

.field private final mLock:Ljava/lang/Object;

.field private volatile mNetwork:Lcom/android/okhttp/internal/Network;

.field private volatile mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

.field public final netId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 76
    const-string/jumbo v0, "http.keepAlive"

    #@3
    const-string/jumbo v1, "true"

    #@6
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    .line 75
    sput-boolean v0, Landroid/net/Network;->httpKeepAlive:Z

    #@10
    .line 78
    sget-boolean v0, Landroid/net/Network;->httpKeepAlive:Z

    #@12
    if-eqz v0, :cond_0

    #@14
    const-string/jumbo v0, "http.maxConnections"

    #@17
    const-string/jumbo v1, "5"

    #@1a
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@21
    move-result v0

    #@22
    .line 77
    :goto_0
    sput v0, Landroid/net/Network;->httpMaxConnections:I

    #@24
    .line 80
    const-string/jumbo v0, "http.keepAliveDuration"

    #@27
    const-string/jumbo v1, "300000"

    #@2a
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@31
    move-result-wide v0

    #@32
    .line 79
    sput-wide v0, Landroid/net/Network;->httpKeepAliveDurationMs:J

    #@34
    .line 397
    new-instance v0, Landroid/net/Network$1;

    #@36
    invoke-direct {v0}, Landroid/net/Network$1;-><init>()V

    #@39
    .line 396
    sput-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3b
    .line 55
    return-void

    #@3c
    .line 78
    :cond_0
    const/4 v0, 0x0

    #@3d
    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "netId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 64
    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    #@6
    .line 67
    iput-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    #@8
    .line 68
    iput-object v0, p0, Landroid/net/Network;->mNetwork:Lcom/android/okhttp/internal/Network;

    #@a
    .line 69
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    #@11
    .line 86
    iput p1, p0, Landroid/net/Network;->netId:I

    #@13
    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/net/Network;)V
    .locals 1
    .param p1, "that"    # Landroid/net/Network;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 64
    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    #@6
    .line 67
    iput-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    #@8
    .line 68
    iput-object v0, p0, Landroid/net/Network;->mNetwork:Lcom/android/okhttp/internal/Network;

    #@a
    .line 69
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    #@11
    .line 93
    iget v0, p1, Landroid/net/Network;->netId:I

    #@13
    iput v0, p0, Landroid/net/Network;->netId:I

    #@15
    .line 92
    return-void
.end method

.method private maybeInitHttpClient()V
    .locals 6

    #@0
    .prologue
    .line 221
    iget-object v1, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 222
    :try_start_0
    iget-object v0, p0, Landroid/net/Network;->mNetwork:Lcom/android/okhttp/internal/Network;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 223
    new-instance v0, Landroid/net/Network$2;

    #@9
    invoke-direct {v0, p0}, Landroid/net/Network$2;-><init>(Landroid/net/Network;)V

    #@c
    iput-object v0, p0, Landroid/net/Network;->mNetwork:Lcom/android/okhttp/internal/Network;

    #@e
    .line 230
    :cond_0
    iget-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    #@10
    if-nez v0, :cond_1

    #@12
    .line 231
    new-instance v0, Lcom/android/okhttp/ConnectionPool;

    #@14
    sget v2, Landroid/net/Network;->httpMaxConnections:I

    #@16
    .line 232
    sget-wide v4, Landroid/net/Network;->httpKeepAliveDurationMs:J

    #@18
    .line 231
    invoke-direct {v0, v2, v4, v5}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    #@1b
    iput-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    :cond_1
    monitor-exit v1

    #@1e
    .line 220
    return-void

    #@1f
    .line 221
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method


# virtual methods
.method public bindSocket(Ljava/io/FileDescriptor;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 331
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    #@3
    move-result-object v4

    #@4
    .line 332
    .local v4, "peer":Ljava/net/SocketAddress;
    check-cast v4, Ljava/net/InetSocketAddress;

    #@6
    .end local v4    # "peer":Ljava/net/SocketAddress;
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@9
    move-result-object v3

    #@a
    .line 333
    .local v3, "inetPeer":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@d
    move-result v5

    #@e
    if-nez v5, :cond_0

    #@10
    .line 336
    new-instance v5, Ljava/net/SocketException;

    #@12
    const-string/jumbo v6, "Socket is connected"

    #@15
    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@18
    throw v5
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    #@19
    .line 338
    .end local v3    # "inetPeer":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    #@1a
    .line 340
    .local v0, "e":Landroid/system/ErrnoException;
    iget v5, v0, Landroid/system/ErrnoException;->errno:I

    #@1c
    sget v6, Landroid/system/OsConstants;->ENOTCONN:I

    #@1e
    if-eq v5, v6, :cond_0

    #@20
    .line 341
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@23
    move-result-object v5

    #@24
    throw v5

    #@25
    .line 343
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    #@26
    .line 345
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v5, Ljava/net/SocketException;

    #@28
    const-string/jumbo v6, "Only AF_INET/AF_INET6 sockets supported"

    #@2b
    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v5

    #@2f
    .line 348
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_0
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    #@32
    move-result v5

    #@33
    iget v6, p0, Landroid/net/Network;->netId:I

    #@35
    invoke-static {v5, v6}, Landroid/net/NetworkUtils;->bindSocketToNetwork(II)I

    #@38
    move-result v2

    #@39
    .line 349
    .local v2, "err":I
    if-eqz v2, :cond_1

    #@3b
    .line 351
    new-instance v5, Landroid/system/ErrnoException;

    #@3d
    new-instance v6, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v7, "Binding socket to network "

    #@45
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    iget v7, p0, Landroid/net/Network;->netId:I

    #@4b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    neg-int v7, v2

    #@54
    invoke-direct {v5, v6, v7}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    #@57
    invoke-virtual {v5}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@5a
    move-result-object v5

    #@5b
    throw v5

    #@5c
    .line 329
    :cond_1
    return-void
.end method

.method public bindSocket(Ljava/net/DatagramSocket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 307
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    #@3
    .line 308
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    #@a
    .line 304
    return-void
.end method

.method public bindSocket(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 319
    invoke-virtual {p1}, Ljava/net/Socket;->getReuseAddress()Z

    #@3
    .line 320
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    #@a
    .line 316
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 390
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 411
    instance-of v2, p1, Landroid/net/Network;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 412
    check-cast v0, Landroid/net/Network;

    #@9
    .line 413
    .local v0, "other":Landroid/net/Network;
    iget v2, p0, Landroid/net/Network;->netId:I

    #@b
    iget v3, v0, Landroid/net/Network;->netId:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    const/4 v1, 0x1

    #@10
    :cond_1
    return v1
.end method

.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    iget v0, p0, Landroid/net/Network;->netId:I

    #@2
    invoke-static {p1, v0}, Ljava/net/InetAddress;->getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    iget v0, p0, Landroid/net/Network;->netId:I

    #@2
    invoke-static {p1, v0}, Ljava/net/InetAddress;->getByNameOnNet(Ljava/lang/String;I)Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNetworkHandle()J
    .locals 6

    #@0
    .prologue
    .line 381
    iget v2, p0, Landroid/net/Network;->netId:I

    #@2
    if-nez v2, :cond_0

    #@4
    .line 382
    const-wide/16 v2, 0x0

    #@6
    return-wide v2

    #@7
    .line 384
    :cond_0
    const-wide/32 v0, 0xfacade

    #@a
    .line 385
    .local v0, "HANDLE_MAGIC":J
    iget v2, p0, Landroid/net/Network;->netId:I

    #@c
    int-to-long v2, v2

    #@d
    const/16 v4, 0x20

    #@f
    shl-long/2addr v2, v4

    #@10
    const-wide/32 v4, 0xfacade

    #@13
    or-long/2addr v2, v4

    #@14
    return-wide v2
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 3

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 196
    iget-object v1, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 197
    :try_start_0
    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 198
    new-instance v0, Landroid/net/Network$NetworkBoundSocketFactory;

    #@d
    iget v2, p0, Landroid/net/Network;->netId:I

    #@f
    invoke-direct {v0, p0, v2}, Landroid/net/Network$NetworkBoundSocketFactory;-><init>(Landroid/net/Network;I)V

    #@12
    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v1

    #@15
    .line 202
    :cond_1
    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    #@17
    return-object v0

    #@18
    .line 196
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 418
    iget v0, p0, Landroid/net/Network;->netId:I

    #@2
    mul-int/lit8 v0, v0, 0xb

    #@4
    return v0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 247
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    #@3
    move-result-object v0

    #@4
    .line 248
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    #@6
    .line 249
    new-instance v3, Ljava/io/IOException;

    #@8
    const-string/jumbo v4, "No ConnectivityManager yet constructed, please construct one"

    #@b
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 252
    :cond_0
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    #@12
    move-result-object v2

    #@13
    .line 253
    .local v2, "proxyInfo":Landroid/net/ProxyInfo;
    const/4 v1, 0x0

    #@14
    .line 254
    .local v1, "proxy":Ljava/net/Proxy;
    if-eqz v2, :cond_1

    #@16
    .line 255
    invoke-virtual {v2}, Landroid/net/ProxyInfo;->makeProxy()Ljava/net/Proxy;

    #@19
    move-result-object v1

    #@1a
    .line 259
    .local v1, "proxy":Ljava/net/Proxy;
    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/net/Network;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    #@1d
    move-result-object v3

    #@1e
    return-object v3

    #@1f
    .line 257
    .local v1, "proxy":Ljava/net/Proxy;
    :cond_1
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@21
    .local v1, "proxy":Ljava/net/Proxy;
    goto :goto_0
.end method

.method public openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 274
    if-nez p2, :cond_0

    #@2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "proxy is null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 275
    :cond_0
    invoke-direct {p0}, Landroid/net/Network;->maybeInitHttpClient()V

    #@e
    .line 276
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 280
    .local v2, "protocol":Ljava/lang/String;
    const-string/jumbo v3, "http"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 281
    invoke-static {p2}, Lcom/android/okhttp/HttpHandler;->createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    #@1e
    move-result-object v1

    #@1f
    .line 289
    .local v1, "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    :goto_0
    invoke-virtual {v1}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    #@22
    move-result-object v0

    #@23
    .line 290
    .local v0, "client":Lcom/android/okhttp/OkHttpClient;
    invoke-virtual {p0}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v0, v3}, Lcom/android/okhttp/OkHttpClient;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/android/okhttp/OkHttpClient;

    #@2a
    move-result-object v3

    #@2b
    iget-object v4, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    #@2d
    invoke-virtual {v3, v4}, Lcom/android/okhttp/OkHttpClient;->setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;

    #@30
    .line 293
    sget-object v3, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@32
    iget-object v4, p0, Landroid/net/Network;->mNetwork:Lcom/android/okhttp/internal/Network;

    #@34
    invoke-virtual {v3, v0, v4}, Lcom/android/okhttp/internal/Internal;->setNetwork(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/Network;)V

    #@37
    .line 295
    invoke-virtual {v1, p1}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    #@3a
    move-result-object v3

    #@3b
    return-object v3

    #@3c
    .line 282
    .end local v0    # "client":Lcom/android/okhttp/OkHttpClient;
    .end local v1    # "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    :cond_1
    const-string/jumbo v3, "https"

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_2

    #@45
    .line 283
    invoke-static {p2}, Lcom/android/okhttp/HttpsHandler;->createHttpsOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    #@48
    move-result-object v1

    #@49
    .restart local v1    # "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    goto :goto_0

    #@4a
    .line 287
    .end local v1    # "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    :cond_2
    new-instance v3, Ljava/net/MalformedURLException;

    #@4c
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v5, "Invalid URL or unrecognized protocol "

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    #@63
    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 423
    iget v0, p0, Landroid/net/Network;->netId:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 393
    iget v0, p0, Landroid/net/Network;->netId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 392
    return-void
.end method
