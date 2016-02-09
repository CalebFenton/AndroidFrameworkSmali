.class public Lcom/android/okhttp/internal/http/SocketConnector;
.super Ljava/lang/Object;
.source "SocketConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;
    }
.end annotation


# instance fields
.field private final connection:Lcom/android/okhttp/Connection;

.field private final connectionPool:Lcom/android/okhttp/ConnectionPool;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/Connection;Lcom/android/okhttp/ConnectionPool;)V
    .locals 0
    .param p1, "connection"    # Lcom/android/okhttp/Connection;
    .param p2, "connectionPool"    # Lcom/android/okhttp/ConnectionPool;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput-object p1, p0, Lcom/android/okhttp/internal/http/SocketConnector;->connection:Lcom/android/okhttp/Connection;

    #@5
    .line 62
    iput-object p2, p0, Lcom/android/okhttp/internal/http/SocketConnector;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    #@7
    .line 60
    return-void
.end method

.method private connectRawSocket(IILcom/android/okhttp/Route;)Ljava/net/Socket;
    .locals 7
    .param p1, "soTimeout"    # I
    .param p2, "connectTimeout"    # I
    .param p3, "route"    # Lcom/android/okhttp/Route;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    #@3
    move-result-object v2

    #@4
    .line 151
    .local v2, "platform":Lcom/android/okhttp/internal/Platform;
    :try_start_0
    invoke-virtual {p3}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    #@7
    move-result-object v3

    #@8
    .line 152
    .local v3, "proxy":Ljava/net/Proxy;
    invoke-virtual {p3}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    #@b
    move-result-object v0

    #@c
    .line 154
    .local v0, "address":Lcom/android/okhttp/Address;
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@f
    move-result-object v5

    #@10
    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@12
    if-eq v5, v6, :cond_0

    #@14
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@17
    move-result-object v5

    #@18
    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@1a
    if-ne v5, v6, :cond_1

    #@1c
    .line 155
    :cond_0
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getSocketFactory()Ljavax/net/SocketFactory;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    #@23
    move-result-object v4

    #@24
    .line 159
    .local v4, "socket":Ljava/net/Socket;
    :goto_0
    invoke-virtual {v4, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    #@27
    .line 160
    invoke-virtual {p3}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v2, v4, v5, p2}, Lcom/android/okhttp/internal/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    #@2e
    .line 162
    return-object v4

    #@2f
    .line 157
    .end local v4    # "socket":Ljava/net/Socket;
    :cond_1
    new-instance v4, Ljava/net/Socket;

    #@31
    invoke-direct {v4, v3}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .restart local v4    # "socket":Ljava/net/Socket;
    goto :goto_0

    #@35
    .line 163
    .end local v0    # "address":Lcom/android/okhttp/Address;
    .end local v3    # "proxy":Ljava/net/Proxy;
    .end local v4    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v1

    #@36
    .line 164
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lcom/android/okhttp/internal/http/RouteException;

    #@38
    invoke-direct {v5, v1}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    #@3b
    throw v5
.end method

.method private createTunnel(IILcom/android/okhttp/Request;Lcom/android/okhttp/Route;Ljava/net/Socket;)V
    .locals 16
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "request"    # Lcom/android/okhttp/Request;
    .param p4, "route"    # Lcom/android/okhttp/Route;
    .param p5, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    #@0
    .prologue
    .line 177
    :try_start_0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p3

    #@4
    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/http/SocketConnector;->createTunnelRequest(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;

    #@7
    move-result-object v9

    #@8
    .line 178
    .local v9, "tunnelRequest":Lcom/android/okhttp/Request;
    new-instance v8, Lcom/android/okhttp/internal/http/HttpConnection;

    #@a
    move-object/from16 v0, p0

    #@c
    iget-object v11, v0, Lcom/android/okhttp/internal/http/SocketConnector;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    #@e
    move-object/from16 v0, p0

    #@10
    iget-object v12, v0, Lcom/android/okhttp/internal/http/SocketConnector;->connection:Lcom/android/okhttp/Connection;

    #@12
    move-object/from16 v0, p5

    #@14
    invoke-direct {v8, v11, v12, v0}, Lcom/android/okhttp/internal/http/HttpConnection;-><init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Connection;Ljava/net/Socket;)V

    #@17
    .line 179
    .local v8, "tunnelConnection":Lcom/android/okhttp/internal/http/HttpConnection;
    move/from16 v0, p1

    #@19
    move/from16 v1, p2

    #@1b
    invoke-virtual {v8, v0, v1}, Lcom/android/okhttp/internal/http/HttpConnection;->setTimeouts(II)V

    #@1e
    .line 180
    invoke-virtual {v9}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@21
    move-result-object v10

    #@22
    .line 181
    .local v10, "url":Ljava/net/URL;
    new-instance v11, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v12, "CONNECT "

    #@2a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v11

    #@2e
    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@31
    move-result-object v12

    #@32
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v11

    #@36
    const-string/jumbo v12, ":"

    #@39
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v11

    #@3d
    invoke-virtual {v10}, Ljava/net/URL;->getPort()I

    #@40
    move-result v12

    #@41
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v11

    #@45
    const-string/jumbo v12, " HTTP/1.1"

    #@48
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v11

    #@4c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v6

    #@50
    .line 183
    .local v6, "requestLine":Ljava/lang/String;
    :cond_0
    invoke-virtual {v9}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    #@53
    move-result-object v11

    #@54
    invoke-virtual {v8, v11, v6}, Lcom/android/okhttp/internal/http/HttpConnection;->writeRequest(Lcom/android/okhttp/Headers;Ljava/lang/String;)V

    #@57
    .line 184
    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpConnection;->flush()V

    #@5a
    .line 185
    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpConnection;->readResponse()Lcom/android/okhttp/Response$Builder;

    #@5d
    move-result-object v11

    #@5e
    invoke-virtual {v11, v9}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    #@61
    move-result-object v11

    #@62
    invoke-virtual {v11}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    #@65
    move-result-object v7

    #@66
    .line 188
    .local v7, "response":Lcom/android/okhttp/Response;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    #@69
    move-result-wide v4

    #@6a
    .line 189
    .local v4, "contentLength":J
    const-wide/16 v12, -0x1

    #@6c
    cmp-long v11, v4, v12

    #@6e
    if-nez v11, :cond_1

    #@70
    .line 190
    const-wide/16 v4, 0x0

    #@72
    .line 192
    :cond_1
    invoke-virtual {v8, v4, v5}, Lcom/android/okhttp/internal/http/HttpConnection;->newFixedLengthSource(J)Lcom/android/okhttp/okio/Source;

    #@75
    move-result-object v2

    #@76
    .line 193
    .local v2, "body":Lcom/android/okhttp/okio/Source;
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@78
    const v12, 0x7fffffff

    #@7b
    invoke-static {v2, v12, v11}, Lcom/android/okhttp/internal/Util;->skipAll(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    #@7e
    .line 194
    invoke-interface {v2}, Lcom/android/okhttp/okio/Source;->close()V

    #@81
    .line 196
    invoke-virtual {v7}, Lcom/android/okhttp/Response;->code()I

    #@84
    move-result v11

    #@85
    sparse-switch v11, :sswitch_data_0

    #@88
    .line 214
    new-instance v11, Ljava/io/IOException;

    #@8a
    .line 215
    new-instance v12, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v13, "Unexpected response code for CONNECT: "

    #@92
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v12

    #@96
    invoke-virtual {v7}, Lcom/android/okhttp/Response;->code()I

    #@99
    move-result v13

    #@9a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v12

    #@9e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v12

    #@a2
    .line 214
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a5
    throw v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a6
    .line 218
    .end local v2    # "body":Lcom/android/okhttp/okio/Source;
    .end local v4    # "contentLength":J
    .end local v6    # "requestLine":Ljava/lang/String;
    .end local v7    # "response":Lcom/android/okhttp/Response;
    .end local v8    # "tunnelConnection":Lcom/android/okhttp/internal/http/HttpConnection;
    .end local v9    # "tunnelRequest":Lcom/android/okhttp/Request;
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    #@a7
    .line 219
    .local v3, "e":Ljava/io/IOException;
    new-instance v11, Lcom/android/okhttp/internal/http/RouteException;

    #@a9
    invoke-direct {v11, v3}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    #@ac
    throw v11

    #@ad
    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "body":Lcom/android/okhttp/okio/Source;
    .restart local v4    # "contentLength":J
    .restart local v6    # "requestLine":Ljava/lang/String;
    .restart local v7    # "response":Lcom/android/okhttp/Response;
    .restart local v8    # "tunnelConnection":Lcom/android/okhttp/internal/http/HttpConnection;
    .restart local v9    # "tunnelRequest":Lcom/android/okhttp/Request;
    .restart local v10    # "url":Ljava/net/URL;
    :sswitch_0
    :try_start_1
    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/HttpConnection;->bufferSize()J

    #@b0
    move-result-wide v12

    #@b1
    const-wide/16 v14, 0x0

    #@b3
    cmp-long v11, v12, v14

    #@b5
    if-lez v11, :cond_2

    #@b7
    .line 203
    new-instance v11, Ljava/io/IOException;

    #@b9
    const-string/jumbo v12, "TLS tunnel buffered too many bytes!"

    #@bc
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@bf
    throw v11

    #@c0
    .line 205
    :cond_2
    return-void

    #@c1
    .line 209
    :sswitch_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    #@c4
    move-result-object v11

    #@c5
    invoke-virtual {v11}, Lcom/android/okhttp/Address;->getAuthenticator()Lcom/android/okhttp/Authenticator;

    #@c8
    move-result-object v11

    #@c9
    invoke-virtual/range {p4 .. p4}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    #@cc
    move-result-object v12

    #@cd
    .line 208
    invoke-static {v11, v7, v12}, Lcom/android/okhttp/internal/http/OkHeaders;->processAuthHeader(Lcom/android/okhttp/Authenticator;Lcom/android/okhttp/Response;Ljava/net/Proxy;)Lcom/android/okhttp/Request;

    #@d0
    move-result-object v9

    #@d1
    .line 210
    if-nez v9, :cond_0

    #@d3
    .line 211
    new-instance v11, Ljava/io/IOException;

    #@d5
    const-string/jumbo v12, "Failed to authenticate with proxy"

    #@d8
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@db
    throw v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@dc
    .line 196
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private createTunnelRequest(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;
    .locals 10
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 231
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@3
    move-result-object v6

    #@4
    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 232
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@b
    move-result-object v6

    #@c
    invoke-static {v6}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    #@f
    move-result v2

    #@10
    .line 233
    .local v2, "port":I
    const-string/jumbo v6, "https"

    #@13
    invoke-static {v6}, Lcom/android/okhttp/internal/Util;->getDefaultPort(Ljava/lang/String;)I

    #@16
    move-result v6

    #@17
    if-ne v2, v6, :cond_2

    #@19
    move-object v0, v1

    #@1a
    .line 234
    .local v0, "authority":Ljava/lang/String;
    :goto_0
    new-instance v6, Lcom/android/okhttp/Request$Builder;

    #@1c
    invoke-direct {v6}, Lcom/android/okhttp/Request$Builder;-><init>()V

    #@1f
    .line 235
    new-instance v7, Ljava/net/URL;

    #@21
    const-string/jumbo v8, "https"

    #@24
    const-string/jumbo v9, "/"

    #@27
    invoke-direct {v7, v8, v1, v2, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@2a
    .line 234
    invoke-virtual {v6, v7}, Lcom/android/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/android/okhttp/Request$Builder;

    #@2d
    move-result-object v6

    #@2e
    .line 236
    const-string/jumbo v7, "Host"

    #@31
    .line 234
    invoke-virtual {v6, v7, v0}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@34
    move-result-object v6

    #@35
    .line 237
    const-string/jumbo v7, "Proxy-Connection"

    #@38
    const-string/jumbo v8, "Keep-Alive"

    #@3b
    .line 234
    invoke-virtual {v6, v7, v8}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@3e
    move-result-object v4

    #@3f
    .line 240
    .local v4, "result":Lcom/android/okhttp/Request$Builder;
    const-string/jumbo v6, "User-Agent"

    #@42
    invoke-virtual {p1, v6}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    .line 241
    .local v5, "userAgent":Ljava/lang/String;
    if-eqz v5, :cond_0

    #@48
    .line 242
    const-string/jumbo v6, "User-Agent"

    #@4b
    invoke-virtual {v4, v6, v5}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@4e
    .line 246
    :cond_0
    const-string/jumbo v6, "Proxy-Authorization"

    #@51
    invoke-virtual {p1, v6}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    .line 247
    .local v3, "proxyAuthorization":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@57
    .line 248
    const-string/jumbo v6, "Proxy-Authorization"

    #@5a
    invoke-virtual {v4, v6, v3}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@5d
    .line 251
    :cond_1
    invoke-virtual {v4}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    #@60
    move-result-object v6

    #@61
    return-object v6

    #@62
    .line 233
    .end local v0    # "authority":Ljava/lang/String;
    .end local v3    # "proxyAuthorization":Ljava/lang/String;
    .end local v4    # "result":Lcom/android/okhttp/Request$Builder;
    .end local v5    # "userAgent":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    const-string/jumbo v7, ":"

    #@6e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v6

    #@76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v0

    #@7a
    .restart local v0    # "authority":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public connectCleartext(IILcom/android/okhttp/Route;)Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;
    .locals 2
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "route"    # Lcom/android/okhttp/Route;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p2, p1, p3}, Lcom/android/okhttp/internal/http/SocketConnector;->connectRawSocket(IILcom/android/okhttp/Route;)Ljava/net/Socket;

    #@3
    move-result-object v0

    #@4
    .line 68
    .local v0, "socket":Ljava/net/Socket;
    new-instance v1, Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;

    #@6
    invoke-direct {v1, p3, v0}, Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;-><init>(Lcom/android/okhttp/Route;Ljava/net/Socket;)V

    #@9
    return-object v1
.end method

.method public connectTls(IIILcom/android/okhttp/Request;Lcom/android/okhttp/Route;Ljava/util/List;Z)Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;
    .locals 23
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "request"    # Lcom/android/okhttp/Request;
    .param p5, "route"    # Lcom/android/okhttp/Route;
    .param p7, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/android/okhttp/Request;",
            "Lcom/android/okhttp/Route;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;Z)",
            "Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    .local p6, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
    invoke-virtual/range {p5 .. p5}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    #@3
    move-result-object v10

    #@4
    .line 76
    .local v10, "address":Lcom/android/okhttp/Address;
    new-instance v15, Lcom/android/okhttp/internal/ConnectionSpecSelector;

    #@6
    move-object/from16 v0, p6

    #@8
    invoke-direct {v15, v0}, Lcom/android/okhttp/internal/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    #@b
    .line 77
    .local v15, "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    const/16 v20, 0x0

    #@d
    .line 79
    :cond_0
    move-object/from16 v0, p0

    #@f
    move/from16 v1, p2

    #@11
    move/from16 v2, p1

    #@13
    move-object/from16 v3, p5

    #@15
    invoke-direct {v0, v1, v2, v3}, Lcom/android/okhttp/internal/http/SocketConnector;->connectRawSocket(IILcom/android/okhttp/Route;)Ljava/net/Socket;

    #@18
    move-result-object v9

    #@19
    .line 80
    .local v9, "socket":Ljava/net/Socket;
    invoke-virtual/range {p5 .. p5}, Lcom/android/okhttp/Route;->requiresTunnel()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_1

    #@1f
    move-object/from16 v4, p0

    #@21
    move/from16 v5, p2

    #@23
    move/from16 v6, p3

    #@25
    move-object/from16 v7, p4

    #@27
    move-object/from16 v8, p5

    #@29
    .line 81
    invoke-direct/range {v4 .. v9}, Lcom/android/okhttp/internal/http/SocketConnector;->createTunnel(IILcom/android/okhttp/Request;Lcom/android/okhttp/Route;Ljava/net/Socket;)V

    #@2c
    .line 84
    :cond_1
    const/16 v21, 0x0

    #@2e
    .line 86
    .local v21, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_0
    invoke-virtual {v10}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@31
    move-result-object v22

    #@32
    .line 90
    .local v22, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v10}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v10}, Lcom/android/okhttp/Address;->getUriPort()I

    #@39
    move-result v5

    #@3a
    const/4 v6, 0x1

    #@3b
    .line 89
    move-object/from16 v0, v22

    #@3d
    invoke-virtual {v0, v9, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    #@40
    move-result-object v4

    #@41
    move-object v0, v4

    #@42
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    #@44
    move-object/from16 v21, v0

    #@46
    .line 93
    .local v21, "sslSocket":Ljavax/net/ssl/SSLSocket;
    move-object/from16 v0, v21

    #@48
    invoke-virtual {v15, v0}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/android/okhttp/ConnectionSpec;

    #@4b
    move-result-object v14

    #@4c
    .line 94
    .local v14, "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    move-result-object v19

    #@50
    .line 95
    .local v19, "platform":Lcom/android/okhttp/internal/Platform;
    const/16 v17, 0x0

    #@52
    .line 96
    .local v17, "handshake":Lcom/android/okhttp/Handshake;
    const/4 v11, 0x0

    #@53
    .line 98
    .local v11, "alpnProtocol":Lcom/android/okhttp/Protocol;
    :try_start_1
    invoke-virtual {v14}, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    #@56
    move-result v4

    #@57
    if-eqz v4, :cond_2

    #@59
    .line 100
    invoke-virtual {v10}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v10}, Lcom/android/okhttp/Address;->getProtocols()Ljava/util/List;

    #@60
    move-result-object v5

    #@61
    .line 99
    move-object/from16 v0, v19

    #@63
    move-object/from16 v1, v21

    #@65
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/okhttp/internal/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    #@68
    .line 103
    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    #@6b
    .line 105
    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    #@6e
    move-result-object v4

    #@6f
    invoke-static {v4}, Lcom/android/okhttp/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lcom/android/okhttp/Handshake;

    #@72
    move-result-object v17

    #@73
    .line 108
    .local v17, "handshake":Lcom/android/okhttp/Handshake;
    invoke-virtual {v14}, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    #@76
    move-result v4

    #@77
    if-eqz v4, :cond_3

    #@79
    .line 109
    move-object/from16 v0, v19

    #@7b
    move-object/from16 v1, v21

    #@7d
    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    #@80
    move-result-object v18

    #@81
    .local v18, "maybeProtocol":Ljava/lang/String;
    if-eqz v18, :cond_3

    #@83
    .line 110
    invoke-static/range {v18 .. v18}, Lcom/android/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/android/okhttp/Protocol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@86
    move-result-object v11

    #@87
    .line 113
    .end local v11    # "alpnProtocol":Lcom/android/okhttp/Protocol;
    .end local v18    # "maybeProtocol":Ljava/lang/String;
    :cond_3
    :try_start_2
    move-object/from16 v0, v19

    #@89
    move-object/from16 v1, v21

    #@8b
    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    #@8e
    .line 117
    invoke-virtual {v10}, Lcom/android/okhttp/Address;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    #@91
    move-result-object v4

    #@92
    invoke-virtual {v10}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    #@95
    move-result-object v5

    #@96
    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    #@99
    move-result-object v6

    #@9a
    invoke-interface {v4, v5, v6}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    #@9d
    move-result v4

    #@9e
    if-nez v4, :cond_4

    #@a0
    .line 118
    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    #@a3
    move-result-object v4

    #@a4
    invoke-interface {v4}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    #@a7
    move-result-object v4

    #@a8
    .line 119
    const/4 v5, 0x0

    #@a9
    .line 118
    aget-object v13, v4, v5

    #@ab
    check-cast v13, Ljava/security/cert/X509Certificate;

    #@ad
    .line 120
    .local v13, "cert":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@af
    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v6, "Hostname "

    #@b7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v5

    #@bb
    invoke-virtual {v10}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    #@be
    move-result-object v6

    #@bf
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v5

    #@c3
    const-string/jumbo v6, " not verified:"

    #@c6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v5

    #@ca
    .line 122
    const-string/jumbo v6, "\n    certificate: "

    #@cd
    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v5

    #@d1
    .line 122
    invoke-static {v13}, Lcom/android/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    #@d4
    move-result-object v6

    #@d5
    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v5

    #@d9
    .line 123
    const-string/jumbo v6, "\n    DN: "

    #@dc
    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v5

    #@e0
    .line 123
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@e3
    move-result-object v6

    #@e4
    invoke-interface {v6}, Ljava/security/Principal;->getName()Ljava/lang/String;

    #@e7
    move-result-object v6

    #@e8
    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v5

    #@ec
    .line 124
    const-string/jumbo v6, "\n    subjectAltNames: "

    #@ef
    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v5

    #@f3
    .line 124
    invoke-static {v13}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    #@f6
    move-result-object v6

    #@f7
    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v5

    #@fb
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v5

    #@ff
    .line 120
    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@102
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@103
    .line 131
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v14    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .end local v17    # "handshake":Lcom/android/okhttp/Handshake;
    .end local v19    # "platform":Lcom/android/okhttp/internal/Platform;
    .end local v21    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v22    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :catch_0
    move-exception v16

    #@104
    .line 132
    .local v16, "e":Ljava/io/IOException;
    if-eqz p7, :cond_5

    #@106
    invoke-virtual/range {v15 .. v16}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    #@109
    move-result v12

    #@10a
    .line 133
    :goto_0
    invoke-static/range {v21 .. v21}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    #@10d
    .line 134
    invoke-static {v9}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    #@110
    .line 135
    if-nez v20, :cond_6

    #@112
    .line 136
    new-instance v20, Lcom/android/okhttp/internal/http/RouteException;

    #@114
    move-object/from16 v0, v20

    #@116
    move-object/from16 v1, v16

    #@118
    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    #@11b
    .line 140
    :goto_1
    if-nez v12, :cond_0

    #@11d
    .line 141
    throw v20

    #@11e
    .line 112
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v11    # "alpnProtocol":Lcom/android/okhttp/Protocol;
    .restart local v14    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .restart local v19    # "platform":Lcom/android/okhttp/internal/Platform;
    .restart local v21    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local v22    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :catchall_0
    move-exception v4

    #@11f
    .line 113
    :try_start_3
    move-object/from16 v0, v19

    #@121
    move-object/from16 v1, v21

    #@123
    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    #@126
    .line 112
    throw v4

    #@127
    .line 128
    .end local v11    # "alpnProtocol":Lcom/android/okhttp/Protocol;
    .restart local v17    # "handshake":Lcom/android/okhttp/Handshake;
    :cond_4
    invoke-virtual {v10}, Lcom/android/okhttp/Address;->getCertificatePinner()Lcom/android/okhttp/CertificatePinner;

    #@12a
    move-result-object v4

    #@12b
    invoke-virtual {v10}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    #@12e
    move-result-object v5

    #@12f
    invoke-virtual/range {v17 .. v17}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    #@132
    move-result-object v6

    #@133
    invoke-virtual {v4, v5, v6}, Lcom/android/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    #@136
    .line 130
    new-instance v4, Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;

    #@138
    move-object/from16 v0, p5

    #@13a
    move-object/from16 v1, v21

    #@13c
    move-object/from16 v2, v17

    #@13e
    invoke-direct {v4, v0, v1, v11, v2}, Lcom/android/okhttp/internal/http/SocketConnector$ConnectedSocket;-><init>(Lcom/android/okhttp/Route;Ljavax/net/ssl/SSLSocket;Lcom/android/okhttp/Protocol;Lcom/android/okhttp/Handshake;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@141
    return-object v4

    #@142
    .line 132
    .end local v14    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .end local v17    # "handshake":Lcom/android/okhttp/Handshake;
    .end local v19    # "platform":Lcom/android/okhttp/internal/Platform;
    .end local v21    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v22    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v16    # "e":Ljava/io/IOException;
    :cond_5
    const/4 v12, 0x0

    #@143
    .local v12, "canRetry":Z
    goto :goto_0

    #@144
    .line 138
    .end local v12    # "canRetry":Z
    :cond_6
    move-object/from16 v0, v20

    #@146
    move-object/from16 v1, v16

    #@148
    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/RouteException;->addConnectException(Ljava/io/IOException;)V

    #@14b
    goto :goto_1
.end method
