.class public final Lcom/android/okhttp/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# instance fields
.field private connected:Z

.field private handshake:Lcom/android/okhttp/Handshake;

.field private httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

.field private idleStartTimeNs:J

.field private owner:Ljava/lang/Object;

.field private final pool:Lcom/android/okhttp/ConnectionPool;

.field private protocol:Lcom/android/okhttp/Protocol;

.field private recycleCount:I

.field private final route:Lcom/android/okhttp/Route;

.field private socket:Ljava/net/Socket;

.field private spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Route;)V
    .locals 1
    .param p1, "pool"    # Lcom/android/okhttp/ConnectionPool;
    .param p2, "route"    # Lcom/android/okhttp/Route;

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/okhttp/Connection;->connected:Z

    #@6
    .line 68
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    #@8
    iput-object v0, p0, Lcom/android/okhttp/Connection;->protocol:Lcom/android/okhttp/Protocol;

    #@a
    .line 81
    iput-object p1, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    #@c
    .line 82
    iput-object p2, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@e
    .line 80
    return-void
.end method


# virtual methods
.method clearOwner()Z
    .locals 2

    #@0
    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    #@2
    monitor-enter v1

    #@3
    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 109
    const/4 v0, 0x0

    #@8
    monitor-exit v1

    #@9
    return v0

    #@a
    .line 112
    :cond_0
    const/4 v0, 0x0

    #@b
    :try_start_1
    iput-object v0, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    .line 113
    const/4 v0, 0x1

    #@e
    monitor-exit v1

    #@f
    return v0

    #@10
    .line 106
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method closeIfOwnedBy(Ljava/lang/Object;)V
    .locals 2
    .param p1, "owner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/okhttp/Connection;->isSpdy()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@b
    throw v0

    #@c
    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    #@e
    monitor-enter v1

    #@f
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    if-eq v0, p1, :cond_1

    #@13
    monitor-exit v1

    #@14
    .line 125
    return-void

    #@15
    .line 128
    :cond_1
    const/4 v0, 0x0

    #@16
    :try_start_1
    iput-object v0, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 132
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@1b
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@1e
    .line 121
    return-void

    #@1f
    .line 123
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method

.method connect(IIILcom/android/okhttp/Request;Ljava/util/List;Z)V
    .locals 10
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "request"    # Lcom/android/okhttp/Request;
    .param p6, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/android/okhttp/Request;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    .local p5, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
    iget-boolean v1, p0, Lcom/android/okhttp/Connection;->connected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "already connected"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 139
    :cond_0
    new-instance v0, Lcom/android/okhttp/internal/http/SocketConnector;

    #@f
    iget-object v1, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    #@11
    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/http/SocketConnector;-><init>(Lcom/android/okhttp/Connection;Lcom/android/okhttp/ConnectionPool;)V

    #@14
    .line 141
    .local v0, "socketConnector":Lcom/android/okhttp/internal/http/SocketConnector;
    iget-object v1, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@16
    iget-object v1, v1, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    #@18
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@1b
    move-result-object v1

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 144
    iget-object v5, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@20
    move v1, p1

    #@21
    move v2, p2

    #@22
    move v3, p3

    #@23
    move-object v4, p4

    #@24
    move-object v6, p5

    #@25
    move/from16 v7, p6

    #@27
    .line 143
    invoke-virtual/range {v0 .. v7}, Lcom/android/okhttp/internal/http/SocketConnector;->connectTls(IIILcom/android/okhttp/Request;Lcom/android/okhttp/Route;Ljava/util/List;Z)Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;

    #@2a
    move-result-object v8

    #@2b
    .line 155
    .local v8, "connectedSocket":Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;
    :goto_0
    iget-object v1, v8, Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;->socket:Ljava/net/Socket;

    #@2d
    iput-object v1, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@2f
    .line 156
    iget-object v1, v8, Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;->handshake:Lcom/android/okhttp/Handshake;

    #@31
    iput-object v1, p0, Lcom/android/okhttp/Connection;->handshake:Lcom/android/okhttp/Handshake;

    #@33
    .line 157
    iget-object v1, v8, Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;->alpnProtocol:Lcom/android/okhttp/Protocol;

    #@35
    if-nez v1, :cond_4

    #@37
    .line 158
    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    #@39
    .line 157
    :goto_1
    iput-object v1, p0, Lcom/android/okhttp/Connection;->protocol:Lcom/android/okhttp/Protocol;

    #@3b
    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/Connection;->protocol:Lcom/android/okhttp/Protocol;

    #@3d
    sget-object v2, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    #@3f
    if-eq v1, v2, :cond_1

    #@41
    iget-object v1, p0, Lcom/android/okhttp/Connection;->protocol:Lcom/android/okhttp/Protocol;

    #@43
    sget-object v2, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    #@45
    if-ne v1, v2, :cond_5

    #@47
    .line 162
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@49
    const/4 v2, 0x0

    #@4a
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    #@4d
    .line 163
    new-instance v1, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;

    #@4f
    iget-object v2, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@51
    iget-object v2, v2, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    #@53
    iget-object v2, v2, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    #@55
    iget-object v3, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@57
    const/4 v4, 0x1

    #@58
    invoke-direct {v1, v2, v4, v3}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;-><init>(Ljava/lang/String;ZLjava/net/Socket;)V

    #@5b
    .line 164
    iget-object v2, p0, Lcom/android/okhttp/Connection;->protocol:Lcom/android/okhttp/Protocol;

    #@5d
    .line 163
    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->build()Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@64
    move-result-object v1

    #@65
    iput-object v1, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@67
    .line 165
    iget-object v1, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@69
    invoke-virtual {v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->sendConnectionPreface()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6c
    .line 172
    :goto_2
    const/4 v1, 0x1

    #@6d
    iput-boolean v1, p0, Lcom/android/okhttp/Connection;->connected:Z

    #@6f
    .line 136
    return-void

    #@70
    .line 147
    .end local v8    # "connectedSocket":Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;
    :cond_2
    sget-object v1, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    #@72
    invoke-interface {p5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@75
    move-result v1

    #@76
    if-nez v1, :cond_3

    #@78
    .line 148
    new-instance v1, Lcom/android/okhttp/internal/http/RouteException;

    #@7a
    .line 149
    new-instance v2, Ljava/net/UnknownServiceException;

    #@7c
    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v4, "CLEARTEXT communication not supported: "

    #@84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v3

    #@90
    .line 149
    invoke-direct {v2, v3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    #@93
    .line 148
    invoke-direct {v1, v2}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    #@96
    throw v1

    #@97
    .line 152
    :cond_3
    iget-object v1, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@99
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/okhttp/internal/http/SocketConnector;->connectCleartext(IILcom/android/okhttp/Route;)Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;

    #@9c
    move-result-object v8

    #@9d
    .restart local v8    # "connectedSocket":Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;
    goto :goto_0

    #@9e
    .line 158
    :cond_4
    iget-object v1, v8, Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;->alpnProtocol:Lcom/android/okhttp/Protocol;

    #@a0
    goto :goto_1

    #@a1
    .line 167
    :cond_5
    :try_start_1
    new-instance v1, Lcom/android/okhttp/internal/http/HttpConnection;

    #@a3
    iget-object v2, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    #@a5
    iget-object v3, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@a7
    invoke-direct {v1, v2, p0, v3}, Lcom/android/okhttp/internal/http/HttpConnection;-><init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Connection;Ljava/net/Socket;)V

    #@aa
    iput-object v1, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@ac
    goto :goto_2

    #@ad
    .line 169
    :catch_0
    move-exception v9

    #@ae
    .line 170
    .local v9, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/okhttp/internal/http/RouteException;

    #@b0
    invoke-direct {v1, v9}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    #@b3
    throw v1
.end method

.method connectAndSetOwner(Lcom/android/okhttp/OkHttpClient;Ljava/lang/Object;Lcom/android/okhttp/Request;)V
    .locals 7
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p2, "owner"    # Ljava/lang/Object;
    .param p3, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    invoke-virtual {p0, p2}, Lcom/android/okhttp/Connection;->setOwner(Ljava/lang/Object;)V

    #@3
    .line 183
    invoke-virtual {p0}, Lcom/android/okhttp/Connection;->isConnected()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 184
    iget-object v0, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@b
    iget-object v0, v0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    #@d
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getConnectionSpecs()Ljava/util/List;

    #@10
    move-result-object v5

    #@11
    .line 185
    .local v5, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->getConnectTimeout()I

    #@14
    move-result v1

    #@15
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    #@18
    move-result v2

    #@19
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->getWriteTimeout()I

    #@1c
    move-result v3

    #@1d
    .line 186
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    #@20
    move-result v6

    #@21
    move-object v0, p0

    #@22
    move-object v4, p3

    #@23
    .line 185
    invoke-virtual/range {v0 .. v6}, Lcom/android/okhttp/Connection;->connect(IIILcom/android/okhttp/Request;Ljava/util/List;Z)V

    #@26
    .line 187
    invoke-virtual {p0}, Lcom/android/okhttp/Connection;->isSpdy()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_0

    #@2c
    .line 188
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->getConnectionPool()Lcom/android/okhttp/ConnectionPool;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0, p0}, Lcom/android/okhttp/ConnectionPool;->share(Lcom/android/okhttp/Connection;)V

    #@33
    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->routeDatabase()Lcom/android/okhttp/internal/RouteDatabase;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {p0}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/RouteDatabase;->connected(Lcom/android/okhttp/Route;)V

    #@3e
    .line 193
    .end local v5    # "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    #@41
    move-result v0

    #@42
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->getWriteTimeout()I

    #@45
    move-result v1

    #@46
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/Connection;->setTimeouts(II)V

    #@49
    .line 180
    return-void
.end method

.method public getHandshake()Lcom/android/okhttp/Handshake;
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/okhttp/Connection;->handshake:Lcom/android/okhttp/Handshake;

    #@2
    return-object v0
.end method

.method getIdleStartTimeNs()J
    .locals 2

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-wide v0, p0, Lcom/android/okhttp/Connection;->idleStartTimeNs:J

    #@6
    :goto_0
    return-wide v0

    #@7
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@9
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->getIdleStartTimeNs()J

    #@c
    move-result-wide v0

    #@d
    goto :goto_0
.end method

.method getOwner()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    #@2
    monitor-enter v0

    #@3
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 86
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getProtocol()Lcom/android/okhttp/Protocol;
    .locals 1

    #@0
    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/okhttp/Connection;->protocol:Lcom/android/okhttp/Protocol;

    #@2
    return-object v0
.end method

.method public getRoute()Lcom/android/okhttp/Route;
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@2
    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@2
    return-object v0
.end method

.method incrementRecycleCount()V
    .locals 1

    #@0
    .prologue
    .line 309
    iget v0, p0, Lcom/android/okhttp/Connection;->recycleCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/okhttp/Connection;->recycleCount:I

    #@6
    .line 308
    return-void
.end method

.method isAlive()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 226
    iget-object v1, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@3
    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@b
    invoke-virtual {v1}, Ljava/net/Socket;->isInputShutdown()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    :cond_0
    :goto_0
    return v0

    #@12
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@14
    invoke-virtual {v1}, Ljava/net/Socket;->isOutputShutdown()Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_0

    #@1a
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method

.method isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/okhttp/Connection;->connected:Z

    #@2
    return v0
.end method

.method isIdle()Z
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@6
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->isIdle()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method isReadable()Z
    .locals 1

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@6
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->isReadable()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 236
    :cond_0
    const/4 v0, 0x1

    #@c
    return v0
.end method

.method isSpdy()Z
    .locals 1

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method newTransport(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/Transport;
    .locals 2
    .param p1, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 264
    new-instance v0, Lcom/android/okhttp/internal/http/SpdyTransport;

    #@6
    iget-object v1, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@8
    invoke-direct {v0, p1, v1}, Lcom/android/okhttp/internal/http/SpdyTransport;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/internal/spdy/SpdyConnection;)V

    #@b
    .line 263
    :goto_0
    return-object v0

    #@c
    .line 265
    :cond_0
    new-instance v0, Lcom/android/okhttp/internal/http/HttpTransport;

    #@e
    iget-object v1, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@10
    invoke-direct {v0, p1, v1}, Lcom/android/okhttp/internal/http/HttpTransport;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/internal/http/HttpConnection;)V

    #@13
    goto :goto_0
.end method

.method rawSink()Lcom/android/okhttp/okio/BufferedSink;
    .locals 1

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@c
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->rawSink()Lcom/android/okhttp/okio/BufferedSink;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method rawSource()Lcom/android/okhttp/okio/BufferedSource;
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@c
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->rawSource()Lcom/android/okhttp/okio/BufferedSource;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method recycleCount()I
    .locals 1

    #@0
    .prologue
    .line 317
    iget v0, p0, Lcom/android/okhttp/Connection;->recycleCount:I

    #@2
    return v0
.end method

.method resetIdleStartTime()V
    .locals 2

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/okhttp/Connection;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "spdyConnection != null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 241
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Lcom/android/okhttp/Connection;->idleStartTimeNs:J

    #@13
    .line 239
    return-void
.end method

.method setOwner(Ljava/lang/Object;)V
    .locals 3
    .param p1, "owner"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/okhttp/Connection;->isSpdy()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    return-void

    #@7
    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    #@9
    monitor-enter v1

    #@a
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;

    #@c
    if-eqz v0, :cond_1

    #@e
    new-instance v0, Ljava/lang/IllegalStateException;

    #@10
    const-string/jumbo v2, "Connection already has an owner!"

    #@13
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 93
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0

    #@1a
    .line 95
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    .line 91
    return-void
.end method

.method setProtocol(Lcom/android/okhttp/Protocol;)V
    .locals 2
    .param p1, "protocol"    # Lcom/android/okhttp/Protocol;

    #@0
    .prologue
    .line 289
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "protocol == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 290
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/Connection;->protocol:Lcom/android/okhttp/Protocol;

    #@d
    .line 288
    return-void
.end method

.method setTimeouts(II)V
    .locals 3
    .param p1, "readTimeoutMillis"    # I
    .param p2, "writeTimeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    iget-boolean v1, p0, Lcom/android/okhttp/Connection;->connected:Z

    #@2
    if-nez v1, :cond_0

    #@4
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "setTimeouts - not connected"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 298
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@13
    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 304
    iget-object v1, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@18
    invoke-virtual {v1, p1, p2}, Lcom/android/okhttp/internal/http/HttpConnection;->setTimeouts(II)V

    #@1b
    .line 294
    :cond_1
    return-void

    #@1c
    .line 301
    :catch_0
    move-exception v0

    #@1d
    .line 302
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/okhttp/internal/http/RouteException;

    #@1f
    invoke-direct {v1, v0}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    #@22
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Connection{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 322
    iget-object v1, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@e
    iget-object v1, v1, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    #@10
    iget-object v1, v1, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    #@12
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 322
    const-string/jumbo v1, ":"

    #@19
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 322
    iget-object v1, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@1f
    iget-object v1, v1, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    #@21
    iget v1, v1, Lcom/android/okhttp/Address;->uriPort:I

    #@23
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 323
    const-string/jumbo v1, ", proxy="

    #@2a
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 324
    iget-object v1, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@30
    iget-object v1, v1, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    #@32
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 325
    const-string/jumbo v1, " hostAddress="

    #@39
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 326
    iget-object v1, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@3f
    iget-object v1, v1, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    #@41
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 327
    const-string/jumbo v1, " cipherSuite="

    #@50
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 328
    iget-object v0, p0, Lcom/android/okhttp/Connection;->handshake:Lcom/android/okhttp/Handshake;

    #@56
    if-eqz v0, :cond_0

    #@58
    iget-object v0, p0, Lcom/android/okhttp/Connection;->handshake:Lcom/android/okhttp/Handshake;

    #@5a
    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    .line 321
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    .line 329
    const-string/jumbo v1, " protocol="

    #@65
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    .line 330
    iget-object v1, p0, Lcom/android/okhttp/Connection;->protocol:Lcom/android/okhttp/Protocol;

    #@6b
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    .line 331
    const/16 v1, 0x7d

    #@71
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    return-object v0

    #@7a
    .line 328
    :cond_0
    const-string/jumbo v0, "none"

    #@7d
    goto :goto_0
.end method
