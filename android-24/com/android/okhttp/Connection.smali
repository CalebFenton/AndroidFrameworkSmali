.class public final Lcom/android/okhttp/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# instance fields
.field private connected:Z

.field private framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

.field private handshake:Lcom/android/okhttp/Handshake;

.field private httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

.field private idleStartTimeNs:J

.field private owner:Ljava/lang/Object;

.field private final pool:Lcom/android/okhttp/ConnectionPool;

.field private protocol:Lcom/android/okhttp/Protocol;

.field private recycleCount:I

.field private final route:Lcom/android/okhttp/Route;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Route;)V
    .locals 1
    .param p1, "pool"    # Lcom/android/okhttp/ConnectionPool;
    .param p2, "route"    # Lcom/android/okhttp/Route;

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/okhttp/Connection;->connected:Z

    #@6
    .line 83
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    #@8
    iput-object v0, p0, Lcom/android/okhttp/Connection;->protocol:Lcom/android/okhttp/Protocol;

    #@a
    .line 96
    iput-object p1, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    #@c
    .line 97
    iput-object p2, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@e
    .line 95
    return-void
.end method

.method private connectSocket(IIILcom/android/okhttp/Request;Lcom/android/okhttp/internal/ConnectionSpecSelector;)V
    .locals 4
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "request"    # Lcom/android/okhttp/Request;
    .param p5, "connectionSpecSelector"    # Lcom/android/okhttp/internal/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    #@5
    .line 196
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    #@8
    move-result-object v0

    #@9
    iget-object v1, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@b
    iget-object v2, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@d
    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/okhttp/internal/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    #@14
    .line 198
    iget-object v0, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@16
    iget-object v0, v0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    #@18
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@1b
    move-result-object v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 199
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/okhttp/Connection;->connectTls(IILcom/android/okhttp/Request;Lcom/android/okhttp/internal/ConnectionSpecSelector;)V

    #@21
    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->protocol:Lcom/android/okhttp/Protocol;

    #@23
    sget-object v1, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    #@25
    if-eq v0, v1, :cond_1

    #@27
    iget-object v0, p0, Lcom/android/okhttp/Connection;->protocol:Lcom/android/okhttp/Protocol;

    #@29
    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    #@2b
    if-ne v0, v1, :cond_2

    #@2d
    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@2f
    const/4 v1, 0x0

    #@30
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    #@33
    .line 204
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    #@35
    iget-object v1, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@37
    iget-object v1, v1, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    #@39
    iget-object v1, v1, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    #@3b
    iget-object v2, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@3d
    const/4 v3, 0x1

    #@3e
    invoke-direct {v0, v1, v3, v2}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;-><init>(Ljava/lang/String;ZLjava/net/Socket;)V

    #@41
    .line 205
    iget-object v1, p0, Lcom/android/okhttp/Connection;->protocol:Lcom/android/okhttp/Protocol;

    #@43
    .line 204
    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->build()Lcom/android/okhttp/internal/framed/FramedConnection;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Lcom/android/okhttp/Connection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@4d
    .line 206
    iget-object v0, p0, Lcom/android/okhttp/Connection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@4f
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->sendConnectionPreface()V

    #@52
    .line 194
    :goto_0
    return-void

    #@53
    .line 208
    :cond_2
    new-instance v0, Lcom/android/okhttp/internal/http/HttpConnection;

    #@55
    iget-object v1, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    #@57
    iget-object v2, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@59
    invoke-direct {v0, v1, p0, v2}, Lcom/android/okhttp/internal/http/HttpConnection;-><init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Connection;Ljava/net/Socket;)V

    #@5c
    iput-object v0, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@5e
    goto :goto_0
.end method

.method private connectTls(IILcom/android/okhttp/Request;Lcom/android/okhttp/internal/ConnectionSpecSelector;)V
    .locals 14
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "request"    # Lcom/android/okhttp/Request;
    .param p4, "connectionSpecSelector"    # Lcom/android/okhttp/internal/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    iget-object v10, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@2
    invoke-virtual {v10}, Lcom/android/okhttp/Route;->requiresTunnel()Z

    #@5
    move-result v10

    #@6
    if-eqz v10, :cond_0

    #@8
    .line 215
    invoke-direct/range {p0 .. p3}, Lcom/android/okhttp/Connection;->createTunnel(IILcom/android/okhttp/Request;)V

    #@b
    .line 218
    :cond_0
    iget-object v10, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@d
    invoke-virtual {v10}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    #@10
    move-result-object v1

    #@11
    .line 219
    .local v1, "address":Lcom/android/okhttp/Address;
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@14
    move-result-object v7

    #@15
    .line 220
    .local v7, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v8, 0x0

    #@16
    .line 221
    .local v8, "success":Z
    const/4 v6, 0x0

    #@17
    .line 225
    .local v6, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_0
    iget-object v10, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@19
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getRfc2732Host()Ljava/lang/String;

    #@1c
    move-result-object v11

    #@1d
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getUriPort()I

    #@20
    move-result v12

    #@21
    const/4 v13, 0x1

    #@22
    .line 224
    invoke-virtual {v7, v10, v11, v12, v13}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    #@25
    move-result-object v10

    #@26
    move-object v0, v10

    #@27
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    #@29
    move-object v6, v0

    #@2a
    .line 228
    .local v6, "sslSocket":Ljavax/net/ssl/SSLSocket;
    move-object/from16 v0, p4

    #@2c
    invoke-virtual {v0, v6}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/android/okhttp/ConnectionSpec;

    #@2f
    move-result-object v3

    #@30
    .line 229
    .local v3, "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    invoke-virtual {v3}, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    #@33
    move-result v10

    #@34
    if-eqz v10, :cond_1

    #@36
    .line 230
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    #@39
    move-result-object v10

    #@3a
    .line 231
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getRfc2732Host()Ljava/lang/String;

    #@3d
    move-result-object v11

    #@3e
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getProtocols()Ljava/util/List;

    #@41
    move-result-object v12

    #@42
    .line 230
    invoke-virtual {v10, v6, v11, v12}, Lcom/android/okhttp/internal/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    #@45
    .line 235
    :cond_1
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    #@48
    .line 236
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    #@4b
    move-result-object v10

    #@4c
    invoke-static {v10}, Lcom/android/okhttp/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lcom/android/okhttp/Handshake;

    #@4f
    move-result-object v9

    #@50
    .line 239
    .local v9, "unverifiedHandshake":Lcom/android/okhttp/Handshake;
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    #@53
    move-result-object v10

    #@54
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getRfc2732Host()Ljava/lang/String;

    #@57
    move-result-object v11

    #@58
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    #@5b
    move-result-object v12

    #@5c
    invoke-interface {v10, v11, v12}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    #@5f
    move-result v10

    #@60
    if-nez v10, :cond_4

    #@62
    .line 240
    invoke-virtual {v9}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    #@65
    move-result-object v10

    #@66
    const/4 v11, 0x0

    #@67
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6a
    move-result-object v2

    #@6b
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@6d
    .line 241
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    new-instance v10, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@6f
    new-instance v11, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v12, "Hostname "

    #@77
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v11

    #@7b
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getRfc2732Host()Ljava/lang/String;

    #@7e
    move-result-object v12

    #@7f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v11

    #@83
    const-string/jumbo v12, " not verified:"

    #@86
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v11

    #@8a
    .line 242
    const-string/jumbo v12, "\n    certificate: "

    #@8d
    .line 241
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v11

    #@91
    .line 242
    invoke-static {v2}, Lcom/android/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    #@94
    move-result-object v12

    #@95
    .line 241
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v11

    #@99
    .line 243
    const-string/jumbo v12, "\n    DN: "

    #@9c
    .line 241
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v11

    #@a0
    .line 243
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@a3
    move-result-object v12

    #@a4
    invoke-interface {v12}, Ljava/security/Principal;->getName()Ljava/lang/String;

    #@a7
    move-result-object v12

    #@a8
    .line 241
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v11

    #@ac
    .line 244
    const-string/jumbo v12, "\n    subjectAltNames: "

    #@af
    .line 241
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v11

    #@b3
    .line 244
    invoke-static {v2}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    #@b6
    move-result-object v12

    #@b7
    .line 241
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v11

    #@bb
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v11

    #@bf
    invoke-direct {v10, v11}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@c2
    throw v10
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c3
    .line 261
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .end local v6    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v9    # "unverifiedHandshake":Lcom/android/okhttp/Handshake;
    :catch_0
    move-exception v4

    #@c4
    .line 262
    .local v4, "e":Ljava/lang/AssertionError;
    :try_start_1
    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    #@c7
    move-result v10

    #@c8
    if-eqz v10, :cond_9

    #@ca
    new-instance v10, Ljava/io/IOException;

    #@cc
    invoke-direct {v10, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@cf
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d0
    .line 264
    .end local v4    # "e":Ljava/lang/AssertionError;
    :catchall_0
    move-exception v10

    #@d1
    .line 265
    if-eqz v6, :cond_2

    #@d3
    .line 266
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    #@d6
    move-result-object v11

    #@d7
    invoke-virtual {v11, v6}, Lcom/android/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    #@da
    .line 268
    :cond_2
    if-nez v8, :cond_3

    #@dc
    .line 269
    invoke-static {v6}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    #@df
    .line 264
    :cond_3
    throw v10

    #@e0
    .line 248
    .restart local v3    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .restart local v6    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local v9    # "unverifiedHandshake":Lcom/android/okhttp/Handshake;
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getCertificatePinner()Lcom/android/okhttp/CertificatePinner;

    #@e3
    move-result-object v10

    #@e4
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getRfc2732Host()Ljava/lang/String;

    #@e7
    move-result-object v11

    #@e8
    .line 249
    invoke-virtual {v9}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    #@eb
    move-result-object v12

    #@ec
    .line 248
    invoke-virtual {v10, v11, v12}, Lcom/android/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    #@ef
    .line 252
    invoke-virtual {v3}, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    #@f2
    move-result v10

    #@f3
    if-eqz v10, :cond_7

    #@f5
    .line 253
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    #@f8
    move-result-object v10

    #@f9
    invoke-virtual {v10, v6}, Lcom/android/okhttp/internal/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    #@fc
    move-result-object v5

    #@fd
    .line 255
    .local v5, "maybeProtocol":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_8

    #@ff
    .line 256
    invoke-static {v5}, Lcom/android/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/android/okhttp/Protocol;

    #@102
    move-result-object v10

    #@103
    .line 255
    :goto_1
    iput-object v10, p0, Lcom/android/okhttp/Connection;->protocol:Lcom/android/okhttp/Protocol;

    #@105
    .line 258
    iput-object v9, p0, Lcom/android/okhttp/Connection;->handshake:Lcom/android/okhttp/Handshake;

    #@107
    .line 259
    iput-object v6, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@109
    .line 260
    const/4 v8, 0x1

    #@10a
    .line 265
    if-eqz v6, :cond_5

    #@10c
    .line 266
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    #@10f
    move-result-object v10

    #@110
    invoke-virtual {v10, v6}, Lcom/android/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    #@113
    .line 268
    :cond_5
    if-nez v8, :cond_6

    #@115
    .line 269
    invoke-static {v6}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    #@118
    .line 213
    :cond_6
    return-void

    #@119
    .line 254
    .end local v5    # "maybeProtocol":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    #@11a
    goto :goto_0

    #@11b
    .line 257
    .restart local v5    # "maybeProtocol":Ljava/lang/String;
    :cond_8
    :try_start_3
    sget-object v10, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@11d
    goto :goto_1

    #@11e
    .line 263
    .end local v3    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .end local v5    # "maybeProtocol":Ljava/lang/String;
    .end local v6    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v9    # "unverifiedHandshake":Lcom/android/okhttp/Handshake;
    .restart local v4    # "e":Ljava/lang/AssertionError;
    :cond_9
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private createTunnel(IILcom/android/okhttp/Request;)V
    .locals 12
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 281
    invoke-direct {p0, p3}, Lcom/android/okhttp/Connection;->createTunnelRequest(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;

    #@3
    move-result-object v6

    #@4
    .line 282
    .local v6, "tunnelRequest":Lcom/android/okhttp/Request;
    new-instance v5, Lcom/android/okhttp/internal/http/HttpConnection;

    #@6
    iget-object v8, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    #@8
    iget-object v9, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@a
    invoke-direct {v5, v8, p0, v9}, Lcom/android/okhttp/internal/http/HttpConnection;-><init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Connection;Ljava/net/Socket;)V

    #@d
    .line 283
    .local v5, "tunnelConnection":Lcom/android/okhttp/internal/http/HttpConnection;
    invoke-virtual {v5, p1, p2}, Lcom/android/okhttp/internal/http/HttpConnection;->setTimeouts(II)V

    #@10
    .line 284
    invoke-virtual {v6}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    #@13
    move-result-object v7

    #@14
    .line 285
    .local v7, "url":Lcom/android/okhttp/HttpUrl;
    new-instance v8, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v9, "CONNECT "

    #@1c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v8

    #@20
    invoke-virtual {v7}, Lcom/android/okhttp/HttpUrl;->rfc2732host()Ljava/lang/String;

    #@23
    move-result-object v9

    #@24
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v8

    #@28
    const-string/jumbo v9, ":"

    #@2b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v8

    #@2f
    invoke-virtual {v7}, Lcom/android/okhttp/HttpUrl;->port()I

    #@32
    move-result v9

    #@33
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v8

    #@37
    const-string/jumbo v9, " HTTP/1.1"

    #@3a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    .line 287
    .local v1, "requestLine":Ljava/lang/String;
    :cond_0
    invoke-virtual {v6}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    #@45
    move-result-object v8

    #@46
    invoke-virtual {v5, v8, v1}, Lcom/android/okhttp/internal/http/HttpConnection;->writeRequest(Lcom/android/okhttp/Headers;Ljava/lang/String;)V

    #@49
    .line 288
    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/HttpConnection;->flush()V

    #@4c
    .line 289
    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/HttpConnection;->readResponse()Lcom/android/okhttp/Response$Builder;

    #@4f
    move-result-object v8

    #@50
    invoke-virtual {v8, v6}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    #@53
    move-result-object v8

    #@54
    invoke-virtual {v8}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    #@57
    move-result-object v4

    #@58
    .line 292
    .local v4, "response":Lcom/android/okhttp/Response;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    #@5b
    move-result-wide v2

    #@5c
    .line 293
    .local v2, "contentLength":J
    const-wide/16 v8, -0x1

    #@5e
    cmp-long v8, v2, v8

    #@60
    if-nez v8, :cond_1

    #@62
    .line 294
    const-wide/16 v2, 0x0

    #@64
    .line 296
    :cond_1
    invoke-virtual {v5, v2, v3}, Lcom/android/okhttp/internal/http/HttpConnection;->newFixedLengthSource(J)Lcom/android/okhttp/okio/Source;

    #@67
    move-result-object v0

    #@68
    .line 297
    .local v0, "body":Lcom/android/okhttp/okio/Source;
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@6a
    const v9, 0x7fffffff

    #@6d
    invoke-static {v0, v9, v8}, Lcom/android/okhttp/internal/Util;->skipAll(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    #@70
    .line 298
    invoke-interface {v0}, Lcom/android/okhttp/okio/Source;->close()V

    #@73
    .line 300
    invoke-virtual {v4}, Lcom/android/okhttp/Response;->code()I

    #@76
    move-result v8

    #@77
    sparse-switch v8, :sswitch_data_0

    #@7a
    .line 318
    new-instance v8, Ljava/io/IOException;

    #@7c
    .line 319
    new-instance v9, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v10, "Unexpected response code for CONNECT: "

    #@84
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v9

    #@88
    invoke-virtual {v4}, Lcom/android/okhttp/Response;->code()I

    #@8b
    move-result v10

    #@8c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v9

    #@90
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v9

    #@94
    .line 318
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@97
    throw v8

    #@98
    .line 306
    :sswitch_0
    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/HttpConnection;->bufferSize()J

    #@9b
    move-result-wide v8

    #@9c
    const-wide/16 v10, 0x0

    #@9e
    cmp-long v8, v8, v10

    #@a0
    if-lez v8, :cond_2

    #@a2
    .line 307
    new-instance v8, Ljava/io/IOException;

    #@a4
    const-string/jumbo v9, "TLS tunnel buffered too many bytes!"

    #@a7
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v8

    #@ab
    .line 309
    :cond_2
    return-void

    #@ac
    .line 313
    :sswitch_1
    iget-object v8, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@ae
    invoke-virtual {v8}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    #@b1
    move-result-object v8

    #@b2
    invoke-virtual {v8}, Lcom/android/okhttp/Address;->getAuthenticator()Lcom/android/okhttp/Authenticator;

    #@b5
    move-result-object v8

    #@b6
    iget-object v9, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@b8
    invoke-virtual {v9}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    #@bb
    move-result-object v9

    #@bc
    .line 312
    invoke-static {v8, v4, v9}, Lcom/android/okhttp/internal/http/OkHeaders;->processAuthHeader(Lcom/android/okhttp/Authenticator;Lcom/android/okhttp/Response;Ljava/net/Proxy;)Lcom/android/okhttp/Request;

    #@bf
    move-result-object v6

    #@c0
    .line 314
    if-nez v6, :cond_0

    #@c2
    .line 315
    new-instance v8, Ljava/io/IOException;

    #@c4
    const-string/jumbo v9, "Failed to authenticate with proxy"

    #@c7
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@ca
    throw v8

    #@cb
    .line 300
    nop

    #@cc
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private createTunnelRequest(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;
    .locals 7
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 332
    new-instance v4, Lcom/android/okhttp/HttpUrl$Builder;

    #@2
    invoke-direct {v4}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    #@5
    .line 333
    const-string/jumbo v5, "https"

    #@8
    .line 332
    invoke-virtual {v4, v5}, Lcom/android/okhttp/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    #@b
    move-result-object v4

    #@c
    .line 334
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v5}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    .line 332
    invoke-virtual {v4, v5}, Lcom/android/okhttp/HttpUrl$Builder;->host(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    #@17
    move-result-object v4

    #@18
    .line 335
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v5}, Lcom/android/okhttp/HttpUrl;->port()I

    #@1f
    move-result v5

    #@20
    .line 332
    invoke-virtual {v4, v5}, Lcom/android/okhttp/HttpUrl$Builder;->port(I)Lcom/android/okhttp/HttpUrl$Builder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Lcom/android/okhttp/HttpUrl$Builder;->build()Lcom/android/okhttp/HttpUrl;

    #@27
    move-result-object v2

    #@28
    .line 337
    .local v2, "tunnelUrl":Lcom/android/okhttp/HttpUrl;
    new-instance v4, Lcom/android/okhttp/Request$Builder;

    #@2a
    invoke-direct {v4}, Lcom/android/okhttp/Request$Builder;-><init>()V

    #@2d
    invoke-virtual {v4, v2}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    #@30
    move-result-object v4

    #@31
    .line 339
    const-string/jumbo v5, "Host"

    #@34
    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    #@37
    move-result-object v6

    #@38
    .line 337
    invoke-virtual {v4, v5, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@3b
    move-result-object v4

    #@3c
    .line 340
    const-string/jumbo v5, "Proxy-Connection"

    #@3f
    const-string/jumbo v6, "Keep-Alive"

    #@42
    .line 337
    invoke-virtual {v4, v5, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@45
    move-result-object v1

    #@46
    .line 343
    .local v1, "result":Lcom/android/okhttp/Request$Builder;
    const-string/jumbo v4, "User-Agent"

    #@49
    invoke-virtual {p1, v4}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    .line 344
    .local v3, "userAgent":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@4f
    .line 345
    const-string/jumbo v4, "User-Agent"

    #@52
    invoke-virtual {v1, v4, v3}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@55
    .line 349
    :cond_0
    const-string/jumbo v4, "Proxy-Authorization"

    #@58
    invoke-virtual {p1, v4}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    .line 350
    .local v0, "proxyAuthorization":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@5e
    .line 351
    const-string/jumbo v4, "Proxy-Authorization"

    #@61
    invoke-virtual {v1, v4, v0}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@64
    .line 354
    :cond_1
    invoke-virtual {v1}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    #@67
    move-result-object v4

    #@68
    return-object v4
.end method


# virtual methods
.method clearOwner()Z
    .locals 2

    #@0
    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    #@2
    monitor-enter v1

    #@3
    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 124
    const/4 v0, 0x0

    #@8
    monitor-exit v1

    #@9
    return v0

    #@a
    .line 127
    :cond_0
    const/4 v0, 0x0

    #@b
    :try_start_1
    iput-object v0, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    .line 128
    const/4 v0, 0x1

    #@e
    monitor-exit v1

    #@f
    return v0

    #@10
    .line 121
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
    .line 137
    invoke-virtual {p0}, Lcom/android/okhttp/Connection;->isFramed()Z

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
    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    #@e
    monitor-enter v1

    #@f
    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    if-eq v0, p1, :cond_1

    #@13
    monitor-exit v1

    #@14
    .line 140
    return-void

    #@15
    .line 143
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
    .line 147
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 148
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@1f
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@22
    .line 136
    :cond_2
    return-void

    #@23
    .line 138
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
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
    .line 154
    .local p5, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
    iget-boolean v0, p0, Lcom/android/okhttp/Connection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 156
    :cond_0
    const/4 v9, 0x0

    #@e
    .line 157
    .local v9, "routeException":Lcom/android/okhttp/internal/http/RouteException;
    new-instance v5, Lcom/android/okhttp/internal/ConnectionSpecSelector;

    #@10
    invoke-direct {v5, p5}, Lcom/android/okhttp/internal/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    #@13
    .line 158
    .local v5, "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    iget-object v0, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@15
    invoke-virtual {v0}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    #@18
    move-result-object v8

    #@19
    .line 159
    .local v8, "proxy":Ljava/net/Proxy;
    iget-object v0, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@1b
    invoke-virtual {v0}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    #@1e
    move-result-object v6

    #@1f
    .line 161
    .local v6, "address":Lcom/android/okhttp/Address;
    iget-object v0, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@21
    iget-object v0, v0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    #@23
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@26
    move-result-object v0

    #@27
    if-nez v0, :cond_1

    #@29
    .line 162
    sget-object v0, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    #@2b
    invoke-interface {p5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_4

    #@31
    .line 167
    .end local v9    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/okhttp/Connection;->connected:Z

    #@33
    if-nez v0, :cond_7

    #@35
    .line 169
    :try_start_0
    invoke-virtual {v8}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@38
    move-result-object v0

    #@39
    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@3b
    if-eq v0, v1, :cond_2

    #@3d
    invoke-virtual {v8}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@40
    move-result-object v0

    #@41
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@43
    if-ne v0, v1, :cond_5

    #@45
    .line 170
    :cond_2
    invoke-virtual {v6}, Lcom/android/okhttp/Address;->getSocketFactory()Ljavax/net/SocketFactory;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    #@4c
    move-result-object v0

    #@4d
    .line 169
    :goto_1
    iput-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@4f
    move-object v0, p0

    #@50
    move v1, p1

    #@51
    move v2, p2

    #@52
    move v3, p3

    #@53
    move-object v4, p4

    #@54
    .line 172
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/Connection;->connectSocket(IIILcom/android/okhttp/Request;Lcom/android/okhttp/internal/ConnectionSpecSelector;)V

    #@57
    .line 174
    const/4 v0, 0x1

    #@58
    iput-boolean v0, p0, Lcom/android/okhttp/Connection;->connected:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5a
    goto :goto_0

    #@5b
    .line 175
    :catch_0
    move-exception v7

    #@5c
    .line 176
    .local v7, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@5e
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    #@61
    .line 177
    const/4 v0, 0x0

    #@62
    iput-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@64
    .line 179
    if-nez v9, :cond_6

    #@66
    .line 180
    new-instance v9, Lcom/android/okhttp/internal/http/RouteException;

    #@68
    invoke-direct {v9, v7}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    #@6b
    .line 185
    :goto_2
    if-eqz p6, :cond_3

    #@6d
    invoke-virtual {v5, v7}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    #@70
    move-result v0

    #@71
    if-nez v0, :cond_1

    #@73
    .line 186
    :cond_3
    throw v9

    #@74
    .line 163
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v9    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :cond_4
    new-instance v0, Lcom/android/okhttp/internal/http/RouteException;

    #@76
    new-instance v1, Ljava/net/UnknownServiceException;

    #@78
    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v3, "CLEARTEXT communication not supported: "

    #@80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v2

    #@8c
    .line 163
    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    #@8f
    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    #@92
    throw v0

    #@93
    .line 171
    .end local v9    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :cond_5
    :try_start_1
    new-instance v0, Ljava/net/Socket;

    #@95
    invoke-direct {v0, v8}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@98
    goto :goto_1

    #@99
    .line 182
    .restart local v7    # "e":Ljava/io/IOException;
    :cond_6
    invoke-virtual {v9, v7}, Lcom/android/okhttp/internal/http/RouteException;->addConnectException(Ljava/io/IOException;)V

    #@9c
    goto :goto_2

    #@9d
    .line 153
    .end local v7    # "e":Ljava/io/IOException;
    :cond_7
    return-void
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
    .line 363
    invoke-virtual {p0, p2}, Lcom/android/okhttp/Connection;->setOwner(Ljava/lang/Object;)V

    #@3
    .line 365
    invoke-virtual {p0}, Lcom/android/okhttp/Connection;->isConnected()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 366
    iget-object v0, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@b
    iget-object v0, v0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    #@d
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getConnectionSpecs()Ljava/util/List;

    #@10
    move-result-object v5

    #@11
    .line 367
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
    .line 368
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    #@20
    move-result v6

    #@21
    move-object v0, p0

    #@22
    move-object v4, p3

    #@23
    .line 367
    invoke-virtual/range {v0 .. v6}, Lcom/android/okhttp/Connection;->connect(IIILcom/android/okhttp/Request;Ljava/util/List;Z)V

    #@26
    .line 369
    invoke-virtual {p0}, Lcom/android/okhttp/Connection;->isFramed()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_0

    #@2c
    .line 370
    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->getConnectionPool()Lcom/android/okhttp/ConnectionPool;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0, p0}, Lcom/android/okhttp/ConnectionPool;->share(Lcom/android/okhttp/Connection;)V

    #@33
    .line 372
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
    .line 375
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
    .line 362
    return-void
.end method

.method public getHandshake()Lcom/android/okhttp/Handshake;
    .locals 1

    #@0
    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/okhttp/Connection;->handshake:Lcom/android/okhttp/Handshake;

    #@2
    return-object v0
.end method

.method getIdleStartTimeNs()J
    .locals 2

    #@0
    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/okhttp/Connection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-wide v0, p0, Lcom/android/okhttp/Connection;->idleStartTimeNs:J

    #@6
    :goto_0
    return-wide v0

    #@7
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/Connection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@9
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->getIdleStartTimeNs()J

    #@c
    move-result-wide v0

    #@d
    goto :goto_0
.end method

.method getOwner()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    #@2
    monitor-enter v0

    #@3
    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 101
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
    .line 463
    iget-object v0, p0, Lcom/android/okhttp/Connection;->protocol:Lcom/android/okhttp/Protocol;

    #@2
    return-object v0
.end method

.method public getRoute()Lcom/android/okhttp/Route;
    .locals 1

    #@0
    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@2
    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    #@0
    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@2
    return-object v0
.end method

.method incrementRecycleCount()V
    .locals 1

    #@0
    .prologue
    .line 491
    iget v0, p0, Lcom/android/okhttp/Connection;->recycleCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/okhttp/Connection;->recycleCount:I

    #@6
    .line 490
    return-void
.end method

.method isAlive()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 408
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
    .line 380
    iget-boolean v0, p0, Lcom/android/okhttp/Connection;->connected:Z

    #@2
    return v0
.end method

.method isFramed()Z
    .locals 1

    #@0
    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/okhttp/Connection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

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

.method isIdle()Z
    .locals 1

    #@0
    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/okhttp/Connection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/okhttp/Connection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@6
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->isIdle()Z

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
    .line 417
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
    .line 418
    :cond_0
    const/4 v0, 0x1

    #@c
    return v0
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
    .line 445
    iget-object v0, p0, Lcom/android/okhttp/Connection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 446
    new-instance v0, Lcom/android/okhttp/internal/http/FramedTransport;

    #@6
    iget-object v1, p0, Lcom/android/okhttp/Connection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@8
    invoke-direct {v0, p1, v1}, Lcom/android/okhttp/internal/http/FramedTransport;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/internal/framed/FramedConnection;)V

    #@b
    .line 445
    :goto_0
    return-object v0

    #@c
    .line 447
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
    .line 402
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
    .line 403
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
    .line 397
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
    .line 398
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
    .line 499
    iget v0, p0, Lcom/android/okhttp/Connection;->recycleCount:I

    #@2
    return v0
.end method

.method resetIdleStartTime()V
    .locals 2

    #@0
    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/okhttp/Connection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "framedConnection != null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 423
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Lcom/android/okhttp/Connection;->idleStartTimeNs:J

    #@13
    .line 421
    return-void
.end method

.method setOwner(Ljava/lang/Object;)V
    .locals 3
    .param p1, "owner"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/okhttp/Connection;->isFramed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    return-void

    #@7
    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/Connection;->pool:Lcom/android/okhttp/ConnectionPool;

    #@9
    monitor-enter v1

    #@a
    .line 109
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
    .line 108
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0

    #@1a
    .line 110
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/okhttp/Connection;->owner:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    .line 106
    return-void
.end method

.method setProtocol(Lcom/android/okhttp/Protocol;)V
    .locals 2
    .param p1, "protocol"    # Lcom/android/okhttp/Protocol;

    #@0
    .prologue
    .line 471
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
    .line 472
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/Connection;->protocol:Lcom/android/okhttp/Protocol;

    #@d
    .line 470
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
    .line 477
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
    .line 480
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/Connection;->socket:Ljava/net/Socket;

    #@13
    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 486
    iget-object v1, p0, Lcom/android/okhttp/Connection;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@18
    invoke-virtual {v1, p1, p2}, Lcom/android/okhttp/internal/http/HttpConnection;->setTimeouts(II)V

    #@1b
    .line 476
    :cond_1
    return-void

    #@1c
    .line 483
    :catch_0
    move-exception v0

    #@1d
    .line 484
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
    .line 503
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
    .line 504
    iget-object v1, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@e
    iget-object v1, v1, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    #@10
    iget-object v1, v1, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    #@12
    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 504
    const-string/jumbo v1, ":"

    #@19
    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 504
    iget-object v1, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@1f
    iget-object v1, v1, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    #@21
    iget v1, v1, Lcom/android/okhttp/Address;->uriPort:I

    #@23
    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 505
    const-string/jumbo v1, ", proxy="

    #@2a
    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 506
    iget-object v1, p0, Lcom/android/okhttp/Connection;->route:Lcom/android/okhttp/Route;

    #@30
    iget-object v1, v1, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    #@32
    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 507
    const-string/jumbo v1, " hostAddress="

    #@39
    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 508
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
    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 509
    const-string/jumbo v1, " cipherSuite="

    #@50
    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 510
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
    .line 503
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    .line 511
    const-string/jumbo v1, " protocol="

    #@65
    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    .line 512
    iget-object v1, p0, Lcom/android/okhttp/Connection;->protocol:Lcom/android/okhttp/Protocol;

    #@6b
    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    .line 513
    const/16 v1, 0x7d

    #@71
    .line 503
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
    .line 510
    :cond_0
    const-string/jumbo v0, "none"

    #@7d
    goto :goto_0
.end method
