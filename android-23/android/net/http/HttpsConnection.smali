.class public Landroid/net/http/HttpsConnection;
.super Landroid/net/http/Connection;
.source "HttpsConnection.java"


# static fields
.field private static mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private mAborted:Z

.field private mProxyHost:Lorg/apache/http/HttpHost;

.field private mSuspendLock:Ljava/lang/Object;

.field private mSuspended:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 57
    sput-object v0, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@3
    .line 63
    invoke-static {v0}, Landroid/net/http/HttpsConnection;->initializeEngine(Ljava/io/File;)V

    #@6
    .line 52
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "proxy"    # Lorg/apache/http/HttpHost;
    .param p4, "requestFeeder"    # Landroid/net/http/RequestFeeder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 139
    invoke-direct {p0, p1, p2, p4}, Landroid/net/http/Connection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    #@4
    .line 117
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    #@b
    .line 123
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    #@d
    .line 129
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    #@f
    .line 140
    iput-object p3, p0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    #@11
    .line 138
    return-void
.end method

.method private static declared-synchronized getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    #@0
    .prologue
    const-class v0, Landroid/net/http/HttpsConnection;

    #@2
    monitor-enter v0

    #@3
    .line 111
    :try_start_0
    sget-object v1, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public static initializeEngine(Ljava/io/File;)V
    .locals 8
    .param p0, "sessionDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 71
    const/4 v0, 0x0

    #@1
    .line 72
    .local v0, "cache":Lcom/android/org/conscrypt/SSLClientSessionCache;
    if-eqz p0, :cond_0

    #@3
    .line 73
    :try_start_0
    const-string/jumbo v5, "HttpsConnection"

    #@6
    new-instance v6, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v7, "Caching SSL sessions in "

    #@e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v6

    #@16
    .line 74
    const-string/jumbo v7, "."

    #@19
    .line 73
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 75
    invoke-static {p0}, Lcom/android/org/conscrypt/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@27
    move-result-object v0

    #@28
    .line 78
    .end local v0    # "cache":Lcom/android/org/conscrypt/SSLClientSessionCache;
    :cond_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->getPreferred()Lcom/android/org/conscrypt/OpenSSLContextImpl;

    #@2b
    move-result-object v3

    #@2c
    .line 81
    .local v3, "sslContext":Lcom/android/org/conscrypt/OpenSSLContextImpl;
    const/4 v5, 0x1

    #@2d
    new-array v4, v5, [Ljavax/net/ssl/TrustManager;

    #@2f
    .line 82
    new-instance v5, Landroid/net/http/HttpsConnection$1;

    #@31
    invoke-direct {v5}, Landroid/net/http/HttpsConnection$1;-><init>()V

    #@34
    const/4 v6, 0x0

    #@35
    aput-object v5, v4, v6

    #@37
    .line 97
    .local v4, "trustManagers":[Ljavax/net/ssl/TrustManager;
    const/4 v5, 0x0

    #@38
    const/4 v6, 0x0

    #@39
    invoke-virtual {v3, v5, v4, v6}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    #@3c
    .line 98
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5, v0}, Lcom/android/org/conscrypt/ClientSessionContext;->setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V

    #@43
    .line 100
    const-class v6, Landroid/net/http/HttpsConnection;

    #@45
    monitor-enter v6
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@46
    .line 101
    :try_start_1
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@49
    move-result-object v5

    #@4a
    sput-object v5, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    :try_start_2
    monitor-exit v6

    #@4d
    .line 69
    return-void

    #@4e
    .line 100
    :catchall_0
    move-exception v5

    #@4f
    monitor-exit v6

    #@50
    throw v5
    :try_end_2
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@51
    .line 103
    .end local v3    # "sslContext":Lcom/android/org/conscrypt/OpenSSLContextImpl;
    .end local v4    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v2

    #@52
    .line 104
    .local v2, "e":Ljava/security/KeyManagementException;
    new-instance v5, Ljava/lang/RuntimeException;

    #@54
    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@57
    throw v5

    #@58
    .line 105
    .end local v2    # "e":Ljava/security/KeyManagementException;
    :catch_1
    move-exception v1

    #@59
    .line 106
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    #@5b
    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@5e
    throw v5
.end method


# virtual methods
.method closeConnection()V
    .locals 2

    #@0
    .prologue
    .line 378
    iget-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 380
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, v1}, Landroid/net/http/HttpsConnection;->restartConnection(Z)V

    #@8
    .line 384
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    #@a
    if-eqz v1, :cond_1

    #@c
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    #@e
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 385
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    #@16
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 376
    :cond_1
    :goto_0
    return-void

    #@1a
    .line 387
    :catch_0
    move-exception v0

    #@1b
    .line 391
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@1e
    goto :goto_0
.end method

.method getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 415
    const-string/jumbo v0, "https"

    #@3
    return-object v0
.end method

.method openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .locals 33
    .param p1, "req"    # Landroid/net/http/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    const/16 v24, 0x0

    #@2
    .line 162
    .local v24, "sslSock":Ljavax/net/ssl/SSLSocket;
    move-object/from16 v0, p0

    #@4
    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    #@6
    move-object/from16 v28, v0

    #@8
    if-eqz v28, :cond_b

    #@a
    .line 170
    const/16 v19, 0x0

    #@c
    .line 171
    .local v19, "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    const/16 v22, 0x0

    #@e
    .line 173
    .local v22, "proxySock":Ljava/net/Socket;
    :try_start_0
    new-instance v23, Ljava/net/Socket;

    #@10
    .line 174
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    #@14
    move-object/from16 v28, v0

    #@16
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    #@19
    move-result-object v28

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    #@1e
    move-object/from16 v29, v0

    #@20
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/HttpHost;->getPort()I

    #@23
    move-result v29

    #@24
    .line 173
    move-object/from16 v0, v23

    #@26
    move-object/from16 v1, v28

    #@28
    move/from16 v2, v29

    #@2a
    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 176
    .local v23, "proxySock":Ljava/net/Socket;
    const v28, 0xea60

    #@30
    :try_start_1
    move-object/from16 v0, v23

    #@32
    move/from16 v1, v28

    #@34
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    #@37
    .line 178
    .end local v22    # "proxySock":Ljava/net/Socket;
    new-instance v20, Landroid/net/http/AndroidHttpClientConnection;

    #@39
    invoke-direct/range {v20 .. v20}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    #@3c
    .line 179
    .local v20, "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    :try_start_2
    new-instance v18, Lorg/apache/http/params/BasicHttpParams;

    #@3e
    .end local v19    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    invoke-direct/range {v18 .. v18}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    #@41
    .line 180
    .local v18, "params":Lorg/apache/http/params/HttpParams;
    const/16 v28, 0x2000

    #@43
    move-object/from16 v0, v18

    #@45
    move/from16 v1, v28

    #@47
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    #@4a
    .line 182
    move-object/from16 v0, v20

    #@4c
    move-object/from16 v1, v23

    #@4e
    move-object/from16 v2, v18

    #@50
    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    #@53
    .line 197
    const/16 v26, 0x0

    #@55
    .line 198
    .local v26, "statusLine":Lorg/apache/http/StatusLine;
    const/16 v25, 0x0

    #@57
    .line 199
    .local v25, "statusCode":I
    new-instance v16, Landroid/net/http/Headers;

    #@59
    invoke-direct/range {v16 .. v16}, Landroid/net/http/Headers;-><init>()V

    #@5c
    .line 201
    .local v16, "headers":Landroid/net/http/Headers;
    :try_start_3
    new-instance v21, Lorg/apache/http/message/BasicHttpRequest;

    #@5e
    .line 202
    const-string/jumbo v28, "CONNECT"

    #@61
    move-object/from16 v0, p0

    #@63
    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    #@65
    move-object/from16 v29, v0

    #@67
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    #@6a
    move-result-object v29

    #@6b
    .line 201
    move-object/from16 v0, v21

    #@6d
    move-object/from16 v1, v28

    #@6f
    move-object/from16 v2, v29

    #@71
    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@74
    .line 207
    .local v21, "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    move-object/from16 v0, p1

    #@76
    iget-object v0, v0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    #@78
    move-object/from16 v28, v0

    #@7a
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/message/BasicHttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    #@7d
    move-result-object v29

    #@7e
    const/16 v28, 0x0

    #@80
    move-object/from16 v0, v29

    #@82
    array-length v0, v0

    #@83
    move/from16 v30, v0

    #@85
    :goto_0
    move/from16 v0, v28

    #@87
    move/from16 v1, v30

    #@89
    if-ge v0, v1, :cond_4

    #@8b
    aget-object v14, v29, v28

    #@8d
    .line 208
    .local v14, "h":Lorg/apache/http/Header;
    invoke-interface {v14}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@90
    move-result-object v31

    #@91
    sget-object v32, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@93
    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@96
    move-result-object v15

    #@97
    .line 209
    .local v15, "headerName":Ljava/lang/String;
    const-string/jumbo v31, "proxy"

    #@9a
    move-object/from16 v0, v31

    #@9c
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9f
    move-result v31

    #@a0
    if-nez v31, :cond_0

    #@a2
    const-string/jumbo v31, "keep-alive"

    #@a5
    move-object/from16 v0, v31

    #@a7
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result v31

    #@ab
    if-nez v31, :cond_0

    #@ad
    .line 210
    const-string/jumbo v31, "host"

    #@b0
    move-object/from16 v0, v31

    #@b2
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b5
    move-result v31

    #@b6
    .line 209
    if-eqz v31, :cond_1

    #@b8
    .line 211
    :cond_0
    move-object/from16 v0, v21

    #@ba
    invoke-virtual {v0, v14}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_3
    .catch Lorg/apache/http/ParseException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@bd
    .line 207
    :cond_1
    add-int/lit8 v28, v28, 0x1

    #@bf
    goto :goto_0

    #@c0
    .line 183
    .end local v14    # "h":Lorg/apache/http/Header;
    .end local v15    # "headerName":Ljava/lang/String;
    .end local v16    # "headers":Landroid/net/http/Headers;
    .end local v18    # "params":Lorg/apache/http/params/HttpParams;
    .end local v20    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .end local v21    # "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    .end local v23    # "proxySock":Ljava/net/Socket;
    .end local v25    # "statusCode":I
    .end local v26    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v19    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v22    # "proxySock":Ljava/net/Socket;
    :catch_0
    move-exception v8

    #@c1
    .line 184
    .end local v19    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .end local v22    # "proxySock":Ljava/net/Socket;
    .local v8, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v19, :cond_2

    #@c3
    .line 185
    invoke-virtual/range {v19 .. v19}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    #@c6
    .line 188
    :cond_2
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@c9
    move-result-object v13

    #@ca
    .line 189
    .local v13, "errorMessage":Ljava/lang/String;
    if-nez v13, :cond_3

    #@cc
    .line 191
    const-string/jumbo v13, "failed to establish a connection to the proxy"

    #@cf
    .line 194
    :cond_3
    new-instance v28, Ljava/io/IOException;

    #@d1
    move-object/from16 v0, v28

    #@d3
    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d6
    throw v28

    #@d7
    .line 215
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "errorMessage":Ljava/lang/String;
    .restart local v16    # "headers":Landroid/net/http/Headers;
    .restart local v18    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v20    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v21    # "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    .restart local v23    # "proxySock":Ljava/net/Socket;
    .restart local v25    # "statusCode":I
    .restart local v26    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_4
    :try_start_4
    invoke-virtual/range {v20 .. v21}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    #@da
    .line 216
    invoke-virtual/range {v20 .. v20}, Landroid/net/http/AndroidHttpClientConnection;->flush()V

    #@dd
    .line 223
    .end local v26    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_5
    move-object/from16 v0, v20

    #@df
    move-object/from16 v1, v16

    #@e1
    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClientConnection;->parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;

    #@e4
    move-result-object v26

    #@e5
    .line 224
    .local v26, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_4
    .catch Lorg/apache/http/ParseException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@e8
    move-result v25

    #@e9
    .line 225
    const/16 v28, 0xc8

    #@eb
    move/from16 v0, v25

    #@ed
    move/from16 v1, v28

    #@ef
    if-lt v0, v1, :cond_5

    #@f1
    .line 252
    const/16 v28, 0xc8

    #@f3
    move/from16 v0, v25

    #@f5
    move/from16 v1, v28

    #@f7
    if-ne v0, v1, :cond_a

    #@f9
    .line 254
    :try_start_5
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@fc
    move-result-object v28

    #@fd
    .line 255
    move-object/from16 v0, p0

    #@ff
    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    #@101
    move-object/from16 v29, v0

    #@103
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    #@106
    move-result-object v29

    #@107
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    #@10b
    move-object/from16 v30, v0

    #@10d
    invoke-virtual/range {v30 .. v30}, Lorg/apache/http/HttpHost;->getPort()I

    #@110
    move-result v30

    #@111
    const/16 v31, 0x1

    #@113
    .line 254
    move-object/from16 v0, v28

    #@115
    move-object/from16 v1, v23

    #@117
    move-object/from16 v2, v29

    #@119
    move/from16 v3, v30

    #@11b
    move/from16 v4, v31

    #@11d
    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    #@120
    move-result-object v24

    #@121
    .end local v24    # "sslSock":Ljavax/net/ssl/SSLSocket;
    check-cast v24, Ljavax/net/ssl/SSLSocket;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    #@123
    .line 306
    .end local v16    # "headers":Landroid/net/http/Headers;
    .end local v18    # "params":Lorg/apache/http/params/HttpParams;
    .end local v20    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .end local v21    # "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    .end local v23    # "proxySock":Ljava/net/Socket;
    .end local v25    # "statusCode":I
    .end local v26    # "statusLine":Lorg/apache/http/StatusLine;
    .local v24, "sslSock":Ljavax/net/ssl/SSLSocket;
    :goto_2
    invoke-static {}, Landroid/net/http/CertificateChainValidator;->getInstance()Landroid/net/http/CertificateChainValidator;

    #@126
    move-result-object v28

    #@127
    .line 307
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    #@12b
    move-object/from16 v29, v0

    #@12d
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    #@130
    move-result-object v29

    #@131
    .line 306
    move-object/from16 v0, v28

    #@133
    move-object/from16 v1, p0

    #@135
    move-object/from16 v2, v24

    #@137
    move-object/from16 v3, v29

    #@139
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/http/CertificateChainValidator;->doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;

    #@13c
    move-result-object v12

    #@13d
    .line 310
    .local v12, "error":Landroid/net/http/SslError;
    if-eqz v12, :cond_11

    #@13f
    .line 316
    move-object/from16 v0, p0

    #@141
    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    #@143
    move-object/from16 v28, v0

    #@145
    monitor-enter v28

    #@146
    .line 317
    const/16 v29, 0x1

    #@148
    :try_start_6
    move/from16 v0, v29

    #@14a
    move-object/from16 v1, p0

    #@14c
    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@14e
    monitor-exit v28

    #@14f
    .line 320
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Request;->getEventHandler()Landroid/net/http/EventHandler;

    #@152
    move-result-object v28

    #@153
    move-object/from16 v0, v28

    #@155
    invoke-interface {v0, v12}, Landroid/net/http/EventHandler;->handleSslErrorRequest(Landroid/net/http/SslError;)Z

    #@158
    move-result v6

    #@159
    .line 321
    .local v6, "canHandle":Z
    if-nez v6, :cond_e

    #@15b
    .line 322
    new-instance v28, Ljava/io/IOException;

    #@15d
    new-instance v29, Ljava/lang/StringBuilder;

    #@15f
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@162
    const-string/jumbo v30, "failed to handle "

    #@165
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v29

    #@169
    move-object/from16 v0, v29

    #@16b
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v29

    #@16f
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@172
    move-result-object v29

    #@173
    invoke-direct/range {v28 .. v29}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@176
    throw v28

    #@177
    .line 242
    .end local v6    # "canHandle":Z
    .end local v12    # "error":Landroid/net/http/SslError;
    .restart local v16    # "headers":Landroid/net/http/Headers;
    .restart local v18    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v20    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v23    # "proxySock":Ljava/net/Socket;
    .local v24, "sslSock":Ljavax/net/ssl/SSLSocket;
    .restart local v25    # "statusCode":I
    :catch_1
    move-exception v8

    #@178
    .line 243
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@17b
    move-result-object v13

    #@17c
    .line 244
    .restart local v13    # "errorMessage":Ljava/lang/String;
    if-nez v13, :cond_6

    #@17e
    .line 246
    const-string/jumbo v13, "failed to send a CONNECT request"

    #@181
    .line 249
    :cond_6
    new-instance v28, Ljava/io/IOException;

    #@183
    move-object/from16 v0, v28

    #@185
    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@188
    throw v28

    #@189
    .line 234
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "errorMessage":Ljava/lang/String;
    :catch_2
    move-exception v10

    #@18a
    .line 235
    .local v10, "e":Lorg/apache/http/HttpException;
    invoke-virtual {v10}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    #@18d
    move-result-object v13

    #@18e
    .line 236
    .restart local v13    # "errorMessage":Ljava/lang/String;
    if-nez v13, :cond_7

    #@190
    .line 238
    const-string/jumbo v13, "failed to send a CONNECT request"

    #@193
    .line 241
    :cond_7
    new-instance v28, Ljava/io/IOException;

    #@195
    move-object/from16 v0, v28

    #@197
    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@19a
    throw v28

    #@19b
    .line 226
    .end local v10    # "e":Lorg/apache/http/HttpException;
    .end local v13    # "errorMessage":Ljava/lang/String;
    :catch_3
    move-exception v11

    #@19c
    .line 227
    .local v11, "e":Lorg/apache/http/ParseException;
    invoke-virtual {v11}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    #@19f
    move-result-object v13

    #@1a0
    .line 228
    .restart local v13    # "errorMessage":Ljava/lang/String;
    if-nez v13, :cond_8

    #@1a2
    .line 230
    const-string/jumbo v13, "failed to send a CONNECT request"

    #@1a5
    .line 233
    :cond_8
    new-instance v28, Ljava/io/IOException;

    #@1a7
    move-object/from16 v0, v28

    #@1a9
    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1ac
    throw v28

    #@1ad
    .line 256
    .end local v11    # "e":Lorg/apache/http/ParseException;
    .end local v13    # "errorMessage":Ljava/lang/String;
    .end local v24    # "sslSock":Ljavax/net/ssl/SSLSocket;
    .restart local v21    # "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    .restart local v26    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_4
    move-exception v8

    #@1ae
    .line 261
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@1b1
    move-result-object v13

    #@1b2
    .line 262
    .restart local v13    # "errorMessage":Ljava/lang/String;
    if-nez v13, :cond_9

    #@1b4
    .line 264
    const-string/jumbo v13, "failed to create an SSL socket"

    #@1b7
    .line 266
    :cond_9
    new-instance v28, Ljava/io/IOException;

    #@1b9
    move-object/from16 v0, v28

    #@1bb
    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1be
    throw v28

    #@1bf
    .line 270
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "errorMessage":Ljava/lang/String;
    .restart local v24    # "sslSock":Ljavax/net/ssl/SSLSocket;
    :cond_a
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@1c2
    move-result-object v27

    #@1c3
    .line 272
    .local v27, "version":Lorg/apache/http/ProtocolVersion;
    move-object/from16 v0, p1

    #@1c5
    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    #@1c7
    move-object/from16 v28, v0

    #@1c9
    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    #@1cc
    move-result v29

    #@1cd
    .line 273
    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    #@1d0
    move-result v30

    #@1d1
    .line 275
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    #@1d4
    move-result-object v31

    #@1d5
    .line 272
    move-object/from16 v0, v28

    #@1d7
    move/from16 v1, v29

    #@1d9
    move/from16 v2, v30

    #@1db
    move/from16 v3, v25

    #@1dd
    move-object/from16 v4, v31

    #@1df
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/http/EventHandler;->status(IIILjava/lang/String;)V

    #@1e2
    .line 276
    move-object/from16 v0, p1

    #@1e4
    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    #@1e6
    move-object/from16 v28, v0

    #@1e8
    move-object/from16 v0, v28

    #@1ea
    move-object/from16 v1, v16

    #@1ec
    invoke-interface {v0, v1}, Landroid/net/http/EventHandler;->headers(Landroid/net/http/Headers;)V

    #@1ef
    .line 277
    move-object/from16 v0, p1

    #@1f1
    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    #@1f3
    move-object/from16 v28, v0

    #@1f5
    invoke-interface/range {v28 .. v28}, Landroid/net/http/EventHandler;->endData()V

    #@1f8
    .line 279
    invoke-virtual/range {v20 .. v20}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    #@1fb
    .line 283
    const/16 v28, 0x0

    #@1fd
    return-object v28

    #@1fe
    .line 288
    .end local v16    # "headers":Landroid/net/http/Headers;
    .end local v18    # "params":Lorg/apache/http/params/HttpParams;
    .end local v20    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .end local v21    # "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    .end local v23    # "proxySock":Ljava/net/Socket;
    .end local v25    # "statusCode":I
    .end local v26    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v27    # "version":Lorg/apache/http/ProtocolVersion;
    :cond_b
    :try_start_7
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@201
    move-result-object v28

    #@202
    .line 289
    move-object/from16 v0, p0

    #@204
    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    #@206
    move-object/from16 v29, v0

    #@208
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    #@20b
    move-result-object v29

    #@20c
    move-object/from16 v0, p0

    #@20e
    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    #@210
    move-object/from16 v30, v0

    #@212
    invoke-virtual/range {v30 .. v30}, Lorg/apache/http/HttpHost;->getPort()I

    #@215
    move-result v30

    #@216
    .line 288
    invoke-virtual/range {v28 .. v30}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    #@219
    move-result-object v28

    #@21a
    move-object/from16 v0, v28

    #@21c
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    #@21e
    move-object/from16 v24, v0

    #@220
    .line 290
    .local v24, "sslSock":Ljavax/net/ssl/SSLSocket;
    const v28, 0xea60

    #@223
    move-object/from16 v0, v24

    #@225
    move/from16 v1, v28

    #@227
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@22a
    goto/16 :goto_2

    #@22c
    .line 291
    .end local v24    # "sslSock":Ljavax/net/ssl/SSLSocket;
    :catch_5
    move-exception v8

    #@22d
    .line 292
    .restart local v8    # "e":Ljava/io/IOException;
    if-eqz v24, :cond_c

    #@22f
    .line 293
    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/SSLSocket;->close()V

    #@232
    .line 296
    :cond_c
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@235
    move-result-object v13

    #@236
    .line 297
    .restart local v13    # "errorMessage":Ljava/lang/String;
    if-nez v13, :cond_d

    #@238
    .line 298
    const-string/jumbo v13, "failed to create an SSL socket"

    #@23b
    .line 301
    :cond_d
    new-instance v28, Ljava/io/IOException;

    #@23d
    move-object/from16 v0, v28

    #@23f
    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@242
    throw v28

    #@243
    .line 316
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "errorMessage":Ljava/lang/String;
    .restart local v12    # "error":Landroid/net/http/SslError;
    .restart local v24    # "sslSock":Ljavax/net/ssl/SSLSocket;
    :catchall_0
    move-exception v29

    #@244
    monitor-exit v28

    #@245
    throw v29

    #@246
    .line 324
    .restart local v6    # "canHandle":Z
    :cond_e
    move-object/from16 v0, p0

    #@248
    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    #@24a
    move-object/from16 v29, v0

    #@24c
    monitor-enter v29

    #@24d
    .line 325
    :try_start_8
    move-object/from16 v0, p0

    #@24f
    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    #@251
    move/from16 v28, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@253
    if-eqz v28, :cond_f

    #@255
    .line 333
    :try_start_9
    move-object/from16 v0, p0

    #@257
    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    #@259
    move-object/from16 v28, v0

    #@25b
    const-wide/32 v30, 0x927c0

    #@25e
    move-object/from16 v0, v28

    #@260
    move-wide/from16 v1, v30

    #@262
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    #@265
    .line 334
    move-object/from16 v0, p0

    #@267
    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    #@269
    move/from16 v28, v0

    #@26b
    if-eqz v28, :cond_f

    #@26d
    .line 338
    const/16 v28, 0x0

    #@26f
    move/from16 v0, v28

    #@271
    move-object/from16 v1, p0

    #@273
    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    #@275
    .line 339
    const/16 v28, 0x1

    #@277
    move/from16 v0, v28

    #@279
    move-object/from16 v1, p0

    #@27b
    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mAborted:Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@27d
    .line 349
    :cond_f
    :goto_3
    :try_start_a
    move-object/from16 v0, p0

    #@27f
    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mAborted:Z

    #@281
    move/from16 v28, v0

    #@283
    if-eqz v28, :cond_10

    #@285
    .line 352
    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/SSLSocket;->close()V

    #@288
    .line 353
    new-instance v28, Landroid/net/http/SSLConnectionClosedByUserException;

    #@28a
    const-string/jumbo v30, "connection closed by the user"

    #@28d
    move-object/from16 v0, v28

    #@28f
    move-object/from16 v1, v30

    #@291
    invoke-direct {v0, v1}, Landroid/net/http/SSLConnectionClosedByUserException;-><init>(Ljava/lang/String;)V

    #@294
    throw v28
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@295
    .line 324
    :catchall_1
    move-exception v28

    #@296
    monitor-exit v29

    #@297
    throw v28

    #@298
    :cond_10
    monitor-exit v29

    #@299
    .line 359
    .end local v6    # "canHandle":Z
    :cond_11
    new-instance v7, Landroid/net/http/AndroidHttpClientConnection;

    #@29b
    invoke-direct {v7}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V

    #@29e
    .line 360
    .local v7, "conn":Landroid/net/http/AndroidHttpClientConnection;
    new-instance v17, Lorg/apache/http/params/BasicHttpParams;

    #@2a0
    invoke-direct/range {v17 .. v17}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    #@2a3
    .line 361
    .local v17, "params":Lorg/apache/http/params/BasicHttpParams;
    const-string/jumbo v28, "http.socket.buffer-size"

    #@2a6
    const/16 v29, 0x2000

    #@2a8
    move-object/from16 v0, v17

    #@2aa
    move-object/from16 v1, v28

    #@2ac
    move/from16 v2, v29

    #@2ae
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    #@2b1
    .line 362
    move-object/from16 v0, v24

    #@2b3
    move-object/from16 v1, v17

    #@2b5
    invoke-virtual {v7, v0, v1}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    #@2b8
    .line 364
    return-object v7

    #@2b9
    .line 345
    .end local v7    # "conn":Landroid/net/http/AndroidHttpClientConnection;
    .end local v17    # "params":Lorg/apache/http/params/BasicHttpParams;
    .restart local v6    # "canHandle":Z
    :catch_6
    move-exception v9

    #@2ba
    .local v9, "e":Ljava/lang/InterruptedException;
    goto :goto_3

    #@2bb
    .line 183
    .end local v6    # "canHandle":Z
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "error":Landroid/net/http/SslError;
    .restart local v19    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v23    # "proxySock":Ljava/net/Socket;
    .local v24, "sslSock":Ljavax/net/ssl/SSLSocket;
    :catch_7
    move-exception v8

    #@2bc
    .restart local v8    # "e":Ljava/io/IOException;
    move-object/from16 v22, v23

    #@2be
    .end local v23    # "proxySock":Ljava/net/Socket;
    .local v22, "proxySock":Ljava/net/Socket;
    goto/16 :goto_1

    #@2c0
    .end local v8    # "e":Ljava/io/IOException;
    .end local v19    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .end local v22    # "proxySock":Ljava/net/Socket;
    .restart local v20    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v23    # "proxySock":Ljava/net/Socket;
    :catch_8
    move-exception v8

    #@2c1
    .restart local v8    # "e":Ljava/io/IOException;
    move-object/from16 v22, v23

    #@2c3
    .end local v23    # "proxySock":Ljava/net/Socket;
    .restart local v22    # "proxySock":Ljava/net/Socket;
    move-object/from16 v19, v20

    #@2c5
    .end local v20    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .local v19, "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    goto/16 :goto_1
.end method

.method restartConnection(Z)V
    .locals 3
    .param p1, "proceed"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 404
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 405
    :try_start_0
    iget-boolean v2, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 406
    const/4 v2, 0x0

    #@9
    iput-boolean v2, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    #@b
    .line 407
    if-eqz p1, :cond_1

    #@d
    :goto_0
    iput-boolean v0, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    #@f
    .line 408
    iget-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    #@11
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v1

    #@15
    .line 398
    return-void

    #@16
    .line 407
    :cond_1
    const/4 v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 404
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;

    #@0
    .prologue
    .line 149
    iput-object p1, p0, Landroid/net/http/HttpsConnection;->mCertificate:Landroid/net/http/SslCertificate;

    #@2
    .line 148
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Landroid/net/http/Connection;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
