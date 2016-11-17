.class final Lsun/net/www/protocol/https/HttpsClient;
.super Lsun/net/www/http/HttpClient;
.source "HttpsClient.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final defaultHVCanonicalName:Ljava/lang/String; = "javax.net.ssl.DefaultHostnameVerifier"

.field private static final httpsPortNumber:I = 0x1bb


# instance fields
.field private hv:Ljavax/net/ssl/HostnameVerifier;

.field private session:Ljavax/net/ssl/SSLSession;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/net/www/protocol/https/HttpsClient;

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
    sput-boolean v0, Lsun/net/www/protocol/https/HttpsClient;->-assertionsDisabled:Z

    #@b
    .line 109
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;)V
    .locals 2
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 234
    const/4 v0, 0x0

    #@1
    nop

    #@2
    nop

    #@3
    const/4 v1, -0x1

    #@4
    invoke-direct {p0, p1, p2, v0, v1}, Lsun/net/www/protocol/https/HttpsClient;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/lang/String;I)V

    #@7
    .line 230
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/lang/String;I)V
    .locals 6
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 243
    const/4 v5, -0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lsun/net/www/protocol/https/HttpsClient;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/lang/String;II)V

    #@9
    .line 242
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/lang/String;II)V
    .locals 1
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .param p5, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 254
    if-nez p3, :cond_0

    #@3
    .line 253
    :goto_0
    invoke-direct {p0, p1, p2, v0, p5}, Lsun/net/www/protocol/https/HttpsClient;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/net/Proxy;I)V

    #@6
    .line 252
    return-void

    #@7
    .line 255
    :cond_0
    invoke-static {p3, p4}, Lsun/net/www/protocol/https/HttpsClient;->newHttpProxy(Ljava/lang/String;I)Ljava/net/Proxy;

    #@a
    move-result-object v0

    #@b
    goto :goto_0
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/net/Proxy;I)V
    .locals 2
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    invoke-direct {p0}, Lsun/net/www/http/HttpClient;-><init>()V

    #@3
    .line 265
    iput-object p3, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@5
    .line 266
    invoke-virtual {p0, p1}, Lsun/net/www/protocol/https/HttpsClient;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    #@8
    .line 267
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lsun/net/www/http/HttpClient;->proxyDisabled:Z

    #@b
    .line 269
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    #@11
    .line 270
    iput-object p2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@13
    .line 271
    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    #@16
    move-result v0

    #@17
    iput v0, p0, Lsun/net/www/http/HttpClient;->port:I

    #@19
    .line 272
    iget v0, p0, Lsun/net/www/http/HttpClient;->port:I

    #@1b
    const/4 v1, -0x1

    #@1c
    if-ne v0, v1, :cond_0

    #@1e
    .line 273
    invoke-virtual {p0}, Lsun/net/www/protocol/https/HttpsClient;->getDefaultPort()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Lsun/net/www/http/HttpClient;->port:I

    #@24
    .line 275
    :cond_0
    invoke-virtual {p0, p4}, Lsun/net/NetworkClient;->setConnectTimeout(I)V

    #@27
    .line 276
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->openServer()V

    #@2a
    .line 264
    return-void
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;ILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 7
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .param p5, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 303
    const/4 v5, 0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move-object v6, p5

    #@7
    invoke-static/range {v0 .. v6}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 7
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .param p5, "useCache"    # Z
    .param p6, "connectTimeout"    # I
    .param p7, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 320
    if-nez p3, :cond_0

    #@3
    :goto_0
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move v4, p5

    #@7
    move v5, p6

    #@8
    move-object v6, p7

    #@9
    .line 319
    invoke-static/range {v0 .. v6}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;ZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 321
    :cond_0
    invoke-static {p3, p4}, Lsun/net/www/protocol/https/HttpsClient;->newHttpProxy(Ljava/lang/String;I)Ljava/net/Proxy;

    #@11
    move-result-object v3

    #@12
    goto :goto_0
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 8
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I
    .param p5, "useCache"    # Z
    .param p6, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 310
    const/4 v6, -0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move-object v7, p6

    #@8
    invoke-static/range {v0 .. v7}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;ZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 5
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "p"    # Ljava/net/Proxy;
    .param p4, "useCache"    # Z
    .param p5, "connectTimeout"    # I
    .param p6, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 330
    if-nez p3, :cond_0

    #@2
    .line 331
    sget-object p3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@4
    .line 333
    :cond_0
    const/4 v1, 0x0

    #@5
    .line 334
    .local v1, "ret":Lsun/net/www/protocol/https/HttpsClient;
    if-eqz p4, :cond_7

    #@7
    .line 336
    sget-object v3, Lsun/net/www/protocol/https/HttpsClient;->kac:Lsun/net/www/http/KeepAliveCache;

    #@9
    invoke-virtual {v3, p1, p0}, Lsun/net/www/http/KeepAliveCache;->get(Ljava/net/URL;Ljava/lang/Object;)Lsun/net/www/http/HttpClient;

    #@c
    move-result-object v1

    #@d
    .end local v1    # "ret":Lsun/net/www/protocol/https/HttpsClient;
    check-cast v1, Lsun/net/www/protocol/https/HttpsClient;

    #@f
    .line 337
    .local v1, "ret":Lsun/net/www/protocol/https/HttpsClient;
    if-eqz v1, :cond_1

    #@11
    if-eqz p6, :cond_1

    #@13
    .line 338
    invoke-virtual {p6}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    #@16
    move-result v3

    #@17
    .line 337
    if-eqz v3, :cond_1

    #@19
    .line 339
    invoke-virtual {p6}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    const-string/jumbo v4, "POST"

    #@20
    if-ne v3, v4, :cond_1

    #@22
    .line 340
    invoke-virtual {v1}, Lsun/net/www/http/HttpClient;->available()Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_1

    #@28
    .line 341
    const/4 v1, 0x0

    #@29
    .line 344
    .end local v1    # "ret":Lsun/net/www/protocol/https/HttpsClient;
    :cond_1
    if-eqz v1, :cond_7

    #@2b
    .line 345
    iget-object v3, v1, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@2d
    if-eqz v3, :cond_2

    #@2f
    iget-object v3, v1, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@31
    invoke-virtual {v3, p3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v3

    #@35
    if-nez v3, :cond_3

    #@37
    .line 346
    :cond_2
    iget-object v3, v1, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@39
    if-nez v3, :cond_8

    #@3b
    if-nez p3, :cond_8

    #@3d
    .line 347
    :cond_3
    monitor-enter v1

    #@3e
    .line 348
    const/4 v3, 0x1

    #@3f
    :try_start_0
    iput-boolean v3, v1, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    #@41
    .line 349
    sget-boolean v3, Lsun/net/www/protocol/https/HttpsClient;->-assertionsDisabled:Z

    #@43
    if-nez v3, :cond_4

    #@45
    iget-boolean v3, v1, Lsun/net/www/http/HttpClient;->inCache:Z

    #@47
    if-nez v3, :cond_4

    #@49
    new-instance v3, Ljava/lang/AssertionError;

    #@4b
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@4e
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .line 347
    :catchall_0
    move-exception v3

    #@50
    monitor-exit v1

    #@51
    throw v3

    #@52
    .line 350
    :cond_4
    const/4 v3, 0x0

    #@53
    :try_start_1
    iput-boolean v3, v1, Lsun/net/www/http/HttpClient;->inCache:Z

    #@55
    .line 351
    if-eqz p6, :cond_5

    #@57
    invoke-virtual {v1}, Lsun/net/www/protocol/https/HttpsClient;->needsTunneling()Z

    #@5a
    move-result v3

    #@5b
    if-eqz v3, :cond_5

    #@5d
    .line 352
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@5f
    invoke-virtual {p6, v3}, Lsun/net/www/protocol/http/HttpURLConnection;->setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V

    #@62
    .line 353
    :cond_5
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->getHttpLogger()Lsun/util/logging/PlatformLogger;

    #@65
    move-result-object v0

    #@66
    .line 354
    .local v0, "logger":Lsun/util/logging/PlatformLogger;
    const/16 v3, 0x12c

    #@68
    invoke-virtual {v0, v3}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@6b
    move-result v3

    #@6c
    if-eqz v3, :cond_6

    #@6e
    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v4, "KeepAlive stream retrieved from the cache, "

    #@76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v3

    #@7a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v3

    #@82
    invoke-virtual {v0, v3}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@85
    :cond_6
    monitor-exit v1

    #@86
    .line 371
    .end local v0    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_7
    :goto_0
    if-nez v1, :cond_9

    #@88
    .line 372
    new-instance v1, Lsun/net/www/protocol/https/HttpsClient;

    #@8a
    invoke-direct {v1, p0, p1, p3, p5}, Lsun/net/www/protocol/https/HttpsClient;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljava/net/Proxy;I)V

    #@8d
    .line 384
    :goto_1
    invoke-virtual {v1, p2}, Lsun/net/www/protocol/https/HttpsClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    #@90
    .line 386
    return-object v1

    #@91
    .line 363
    :cond_8
    monitor-enter v1

    #@92
    .line 364
    const/4 v3, 0x0

    #@93
    :try_start_2
    iput-boolean v3, v1, Lsun/net/www/http/HttpClient;->inCache:Z

    #@95
    .line 365
    invoke-virtual {v1}, Lsun/net/www/http/HttpClient;->closeServer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@98
    monitor-exit v1

    #@99
    .line 367
    const/4 v1, 0x0

    #@9a
    .local v1, "ret":Lsun/net/www/protocol/https/HttpsClient;
    goto :goto_0

    #@9b
    .line 363
    .end local v1    # "ret":Lsun/net/www/protocol/https/HttpsClient;
    :catchall_1
    move-exception v3

    #@9c
    monitor-exit v1

    #@9d
    throw v3

    #@9e
    .line 374
    :cond_9
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@a1
    move-result-object v2

    #@a2
    .line 375
    .local v2, "security":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_b

    #@a4
    .line 376
    iget-object v3, v1, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@a6
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@a8
    if-eq v3, v4, :cond_a

    #@aa
    iget-object v3, v1, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@ac
    if-nez v3, :cond_c

    #@ae
    .line 377
    :cond_a
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@b1
    move-result-object v3

    #@b2
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@b5
    move-result-object v3

    #@b6
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@bd
    move-result v4

    #@be
    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@c1
    .line 382
    :cond_b
    :goto_2
    iput-object p1, v1, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@c3
    goto :goto_1

    #@c4
    .line 379
    :cond_c
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@c7
    move-result-object v3

    #@c8
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@cb
    move-result v4

    #@cc
    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@cf
    goto :goto_2
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Lsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 1
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 286
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, p2, v0, p3}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;ZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;ZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 7
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hv"    # Ljavax/net/ssl/HostnameVerifier;
    .param p3, "useCache"    # Z
    .param p4, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 293
    const/4 v3, 0x0

    #@1
    nop

    #@2
    nop

    #@3
    const/4 v4, -0x1

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move v5, p3

    #@8
    move-object v6, p4

    #@9
    invoke-static/range {v0 .. v6}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method private checkURLSpoofing(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 10
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 595
    iget-object v7, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@3
    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    .line 598
    .local v4, "host":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@9
    const-string/jumbo v7, "["

    #@c
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f
    move-result v7

    #@10
    if-eqz v7, :cond_0

    #@12
    const-string/jumbo v7, "]"

    #@15
    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@18
    move-result v7

    #@19
    if-eqz v7, :cond_0

    #@1b
    .line 599
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@1e
    move-result v7

    #@1f
    add-int/lit8 v7, v7, -0x1

    #@21
    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 602
    :cond_0
    const/4 v6, 0x0

    #@26
    .line 603
    .local v6, "peerCerts":[Ljava/security/cert/Certificate;
    iget-object v7, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    #@28
    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 606
    .local v1, "cipher":Ljava/lang/String;
    const/4 v7, 0x1

    #@2d
    .line 605
    :try_start_0
    invoke-static {v7}, Lsun/security/util/HostnameChecker;->getInstance(B)Lsun/security/util/HostnameChecker;

    #@30
    move-result-object v0

    #@31
    .line 609
    .local v0, "checker":Lsun/security/util/HostnameChecker;
    const-string/jumbo v7, "TLS_KRB5"

    #@34
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@37
    move-result v7

    #@38
    if-eqz v7, :cond_1

    #@3a
    .line 610
    invoke-virtual {p0}, Lsun/net/www/protocol/https/HttpsClient;->getPeerPrincipal()Ljava/security/Principal;

    #@3d
    move-result-object v7

    #@3e
    invoke-static {v4, v7}, Lsun/security/util/HostnameChecker;->match(Ljava/lang/String;Ljava/security/Principal;)Z

    #@41
    move-result v7

    #@42
    if-nez v7, :cond_2

    #@44
    .line 611
    new-instance v7, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@46
    const-string/jumbo v8, "Hostname checker failed for Kerberos"

    #@49
    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v7
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    #@4d
    .line 632
    .end local v0    # "checker":Lsun/security/util/HostnameChecker;
    .end local v6    # "peerCerts":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v3

    #@4e
    .line 643
    :goto_0
    if-eqz v1, :cond_4

    #@50
    const-string/jumbo v7, "_anon_"

    #@53
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@56
    move-result v7

    #@57
    const/4 v8, -0x1

    #@58
    if-eq v7, v8, :cond_4

    #@5a
    .line 644
    return-void

    #@5b
    .line 617
    .restart local v0    # "checker":Lsun/security/util/HostnameChecker;
    .restart local v6    # "peerCerts":[Ljava/security/cert/Certificate;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    #@5d
    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    #@60
    move-result-object v6

    #@61
    .line 620
    .local v6, "peerCerts":[Ljava/security/cert/Certificate;
    const/4 v7, 0x0

    #@62
    aget-object v7, v6, v7

    #@64
    instance-of v7, v7, Ljava/security/cert/X509Certificate;

    #@66
    if-eqz v7, :cond_3

    #@68
    .line 622
    const/4 v7, 0x0

    #@69
    aget-object v5, v6, v7

    #@6b
    check-cast v5, Ljava/security/cert/X509Certificate;

    #@6d
    .line 626
    .local v5, "peerCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0, v4, v5}, Lsun/security/util/HostnameChecker;->match(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    #@70
    .line 630
    .end local v5    # "peerCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "peerCerts":[Ljava/security/cert/Certificate;
    :cond_2
    return-void

    #@71
    .line 624
    .restart local v6    # "peerCerts":[Ljava/security/cert/Certificate;
    :cond_3
    new-instance v7, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@73
    const-string/jumbo v8, ""

    #@76
    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@79
    throw v7
    :try_end_1
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    #@7a
    .line 639
    .end local v0    # "checker":Lsun/security/util/HostnameChecker;
    .end local v6    # "peerCerts":[Ljava/security/cert/Certificate;
    :catch_1
    move-exception v2

    #@7b
    .local v2, "cpe":Ljava/security/cert/CertificateException;
    goto :goto_0

    #@7c
    .line 645
    .end local v2    # "cpe":Ljava/security/cert/CertificateException;
    :cond_4
    if-eqz p1, :cond_5

    #@7e
    .line 646
    iget-object v7, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    #@80
    invoke-interface {p1, v4, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    #@83
    move-result v7

    #@84
    .line 645
    if-eqz v7, :cond_5

    #@86
    .line 647
    return-void

    #@87
    .line 650
    :cond_5
    iget-object v7, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@89
    invoke-virtual {v7}, Ljava/net/Socket;->close()V

    #@8c
    .line 651
    iget-object v7, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    #@8e
    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->invalidate()V

    #@91
    .line 653
    new-instance v7, Ljava/io/IOException;

    #@93
    new-instance v8, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v9, "HTTPS hostname wrong:  should be <"

    #@9b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v8

    #@9f
    .line 654
    iget-object v9, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@a1
    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@a4
    move-result-object v9

    #@a5
    .line 653
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v8

    #@a9
    .line 654
    const-string/jumbo v9, ">"

    #@ac
    .line 653
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v8

    #@b0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v8

    #@b4
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b7
    throw v7
.end method

.method private getCipherSuites()[Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 144
    new-instance v5, Lsun/security/action/GetPropertyAction;

    #@2
    const-string/jumbo v6, "https.cipherSuites"

    #@5
    invoke-direct {v5, v6}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@8
    .line 143
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/String;

    #@e
    .line 146
    .local v0, "cipherString":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@10
    const-string/jumbo v5, ""

    #@13
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_2

    #@19
    .line 147
    :cond_0
    const/4 v1, 0x0

    #@1a
    .line 159
    :cond_1
    return-object v1

    #@1b
    .line 150
    :cond_2
    new-instance v4, Ljava/util/Vector;

    #@1d
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    #@20
    .line 152
    .local v4, "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    #@22
    const-string/jumbo v5, ","

    #@25
    invoke-direct {v3, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 153
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_3

    #@2e
    .line 154
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@35
    goto :goto_0

    #@36
    .line 155
    :cond_3
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@39
    move-result v5

    #@3a
    new-array v1, v5, [Ljava/lang/String;

    #@3c
    .line 156
    .local v1, "ciphers":[Ljava/lang/String;
    const/4 v2, 0x0

    #@3d
    .local v2, "i":I
    :goto_1
    array-length v5, v1

    #@3e
    if-ge v2, v5, :cond_1

    #@40
    .line 157
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@43
    move-result-object v5

    #@44
    check-cast v5, Ljava/lang/String;

    #@46
    aput-object v5, v1, v2

    #@48
    .line 156
    add-int/lit8 v2, v2, 0x1

    #@4a
    goto :goto_1
.end method

.method private getProtocols()[Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 168
    new-instance v5, Lsun/security/action/GetPropertyAction;

    #@2
    const-string/jumbo v6, "https.protocols"

    #@5
    invoke-direct {v5, v6}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@8
    .line 167
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/lang/String;

    #@e
    .line 170
    .local v1, "protocolString":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@10
    const-string/jumbo v5, ""

    #@13
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_2

    #@19
    .line 171
    :cond_0
    const/4 v2, 0x0

    #@1a
    .line 184
    :cond_1
    return-object v2

    #@1b
    .line 174
    :cond_2
    new-instance v4, Ljava/util/Vector;

    #@1d
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    #@20
    .line 176
    .local v4, "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    #@22
    const-string/jumbo v5, ","

    #@25
    invoke-direct {v3, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 177
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_3

    #@2e
    .line 178
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@35
    goto :goto_0

    #@36
    .line 179
    :cond_3
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@39
    move-result v5

    #@3a
    new-array v2, v5, [Ljava/lang/String;

    #@3c
    .line 180
    .local v2, "protocols":[Ljava/lang/String;
    const/4 v0, 0x0

    #@3d
    .local v0, "i":I
    :goto_1
    array-length v5, v2

    #@3e
    if-ge v0, v5, :cond_1

    #@40
    .line 181
    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@43
    move-result-object v5

    #@44
    check-cast v5, Ljava/lang/String;

    #@46
    aput-object v5, v2, v0

    #@48
    .line 180
    add-int/lit8 v0, v0, 0x1

    #@4a
    goto :goto_1
.end method

.method private getUserAgent()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 189
    new-instance v1, Lsun/security/action/GetPropertyAction;

    #@2
    const-string/jumbo v2, "https.agent"

    #@5
    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@8
    .line 188
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/String;

    #@e
    .line 190
    .local v0, "userAgent":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_1

    #@16
    .line 191
    :cond_0
    const-string/jumbo v0, "JSSE"

    #@19
    .line 193
    :cond_1
    return-object v0
.end method

.method private static newHttpProxy(Ljava/lang/String;I)Ljava/net/Proxy;
    .locals 7
    .param p0, "proxyHost"    # Ljava/lang/String;
    .param p1, "proxyPort"    # I

    #@0
    .prologue
    .line 198
    const/4 v4, 0x0

    #@1
    .line 199
    .local v4, "saddr":Ljava/net/InetSocketAddress;
    move-object v2, p0

    #@2
    .line 200
    .local v2, "phost":Ljava/lang/String;
    if-gez p1, :cond_0

    #@4
    const/16 v3, 0x1bb

    #@6
    .line 202
    .local v3, "pport":I
    :goto_0
    :try_start_0
    new-instance v5, Lsun/net/www/protocol/https/HttpsClient$1;

    #@8
    invoke-direct {v5, p0, v3}, Lsun/net/www/protocol/https/HttpsClient$1;-><init>(Ljava/lang/String;I)V

    #@b
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@e
    move-result-object v5

    #@f
    move-object v0, v5

    #@10
    check-cast v0, Ljava/net/InetSocketAddress;

    #@12
    move-object v4, v0
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 209
    .end local v4    # "saddr":Ljava/net/InetSocketAddress;
    :goto_1
    new-instance v5, Ljava/net/Proxy;

    #@15
    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@17
    invoke-direct {v5, v6, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    #@1a
    return-object v5

    #@1b
    .line 200
    .end local v3    # "pport":I
    .restart local v4    # "saddr":Ljava/net/InetSocketAddress;
    :cond_0
    move v3, p1

    #@1c
    .restart local v3    # "pport":I
    goto :goto_0

    #@1d
    .line 207
    :catch_0
    move-exception v1

    #@1e
    .local v1, "pae":Ljava/security/PrivilegedActionException;
    goto :goto_1
.end method


# virtual methods
.method public afterConnect()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 436
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->isCachedConnection()Z

    #@3
    move-result v13

    #@4
    if-nez v13, :cond_9

    #@6
    .line 437
    const/4 v12, 0x0

    #@7
    .line 438
    .local v12, "s":Ljavax/net/ssl/SSLSocket;
    move-object/from16 v0, p0

    #@9
    iget-object v5, v0, Lsun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@b
    .line 440
    .local v5, "factory":Ljavax/net/ssl/SSLSocketFactory;
    :try_start_0
    move-object/from16 v0, p0

    #@d
    iget-object v13, v0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@f
    instance-of v13, v13, Ljavax/net/ssl/SSLSocket;

    #@11
    if-nez v13, :cond_5

    #@13
    .line 441
    move-object/from16 v0, p0

    #@15
    iget-object v13, v0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@17
    .line 442
    move-object/from16 v0, p0

    #@19
    iget-object v14, v0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    #@1b
    move-object/from16 v0, p0

    #@1d
    iget v15, v0, Lsun/net/www/http/HttpClient;->port:I

    #@1f
    const/16 v16, 0x1

    #@21
    .line 441
    move/from16 v0, v16

    #@23
    invoke-virtual {v5, v13, v14, v15, v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    #@26
    move-result-object v13

    #@27
    move-object v0, v13

    #@28
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    #@2a
    move-object v12, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 465
    .local v12, "s":Ljavax/net/ssl/SSLSocket;
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/https/HttpsClient;->getProtocols()[Ljava/lang/String;

    #@2e
    move-result-object v11

    #@2f
    .line 466
    .local v11, "protocols":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/https/HttpsClient;->getCipherSuites()[Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    .line 467
    .local v2, "ciphers":[Ljava/lang/String;
    if-eqz v11, :cond_1

    #@35
    .line 468
    invoke-virtual {v12, v11}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    #@38
    .line 470
    :cond_1
    if-eqz v2, :cond_2

    #@3a
    .line 471
    invoke-virtual {v12, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    #@3d
    .line 473
    :cond_2
    move-object/from16 v0, p0

    #@3f
    invoke-virtual {v12, v0}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    #@42
    .line 523
    const/4 v9, 0x1

    #@43
    .line 525
    .local v9, "needToCheckSpoofing":Z
    invoke-virtual {v12}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@46
    move-result-object v13

    #@47
    invoke-virtual {v13}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    .line 526
    .local v6, "identification":Ljava/lang/String;
    if-eqz v6, :cond_6

    #@4d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@50
    move-result v13

    #@51
    if-eqz v13, :cond_6

    #@53
    .line 527
    const-string/jumbo v13, "HTTPS"

    #@56
    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@59
    move-result v13

    #@5a
    if-eqz v13, :cond_3

    #@5c
    .line 531
    const/4 v9, 0x0

    #@5d
    .line 564
    :cond_3
    :goto_1
    invoke-virtual {v12}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    #@60
    .line 565
    invoke-virtual {v12}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    #@63
    move-result-object v13

    #@64
    move-object/from16 v0, p0

    #@66
    iput-object v13, v0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    #@68
    .line 567
    move-object/from16 v0, p0

    #@6a
    iput-object v12, v0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@6c
    .line 569
    :try_start_1
    new-instance v13, Ljava/io/PrintStream;

    #@6e
    .line 570
    new-instance v14, Ljava/io/BufferedOutputStream;

    #@70
    move-object/from16 v0, p0

    #@72
    iget-object v15, v0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@74
    invoke-virtual {v15}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@77
    move-result-object v15

    #@78
    invoke-direct {v14, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@7b
    .line 571
    sget-object v15, Lsun/net/www/protocol/https/HttpsClient;->encoding:Ljava/lang/String;

    #@7d
    const/16 v16, 0x0

    #@7f
    .line 569
    move/from16 v0, v16

    #@81
    invoke-direct {v13, v14, v0, v15}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    #@84
    move-object/from16 v0, p0

    #@86
    iput-object v13, v0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    #@88
    .line 577
    if-eqz v9, :cond_4

    #@8a
    .line 578
    move-object/from16 v0, p0

    #@8c
    iget-object v13, v0, Lsun/net/www/protocol/https/HttpsClient;->hv:Ljavax/net/ssl/HostnameVerifier;

    #@8e
    move-object/from16 v0, p0

    #@90
    invoke-direct {v0, v13}, Lsun/net/www/protocol/https/HttpsClient;->checkURLSpoofing(Ljavax/net/ssl/HostnameVerifier;)V

    #@93
    .line 435
    .end local v2    # "ciphers":[Ljava/lang/String;
    .end local v5    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v6    # "identification":Ljava/lang/String;
    .end local v9    # "needToCheckSpoofing":Z
    .end local v11    # "protocols":[Ljava/lang/String;
    .end local v12    # "s":Ljavax/net/ssl/SSLSocket;
    :cond_4
    :goto_2
    return-void

    #@94
    .line 444
    .restart local v5    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    .local v12, "s":Ljavax/net/ssl/SSLSocket;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    #@96
    iget-object v13, v0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@98
    move-object v0, v13

    #@99
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    #@9b
    move-object v12, v0

    #@9c
    .line 445
    .local v12, "s":Ljavax/net/ssl/SSLSocket;
    instance-of v13, v12, Lsun/security/ssl/SSLSocketImpl;

    #@9e
    if-eqz v13, :cond_0

    #@a0
    .line 446
    move-object v0, v12

    #@a1
    nop

    #@a2
    nop

    #@a3
    move-object v13, v0

    #@a4
    move-object/from16 v0, p0

    #@a6
    iget-object v14, v0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    #@a8
    invoke-virtual {v13, v14}, Lsun/security/ssl/SSLSocketImpl;->setHost(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@ab
    goto :goto_0

    #@ac
    .line 449
    .end local v12    # "s":Ljavax/net/ssl/SSLSocket;
    :catch_0
    move-exception v4

    #@ad
    .line 454
    .local v4, "ex":Ljava/io/IOException;
    :try_start_3
    move-object/from16 v0, p0

    #@af
    iget-object v13, v0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    #@b1
    move-object/from16 v0, p0

    #@b3
    iget v14, v0, Lsun/net/www/http/HttpClient;->port:I

    #@b5
    invoke-virtual {v5, v13, v14}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    #@b8
    move-result-object v12

    #@b9
    check-cast v12, Ljavax/net/ssl/SSLSocket;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@bb
    .restart local v12    # "s":Ljavax/net/ssl/SSLSocket;
    goto/16 :goto_0

    #@bd
    .line 455
    .end local v12    # "s":Ljavax/net/ssl/SSLSocket;
    :catch_1
    move-exception v7

    #@be
    .line 456
    .local v7, "ignored":Ljava/io/IOException;
    throw v4

    #@bf
    .line 535
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v7    # "ignored":Ljava/io/IOException;
    .restart local v2    # "ciphers":[Ljava/lang/String;
    .restart local v6    # "identification":Ljava/lang/String;
    .restart local v9    # "needToCheckSpoofing":Z
    .restart local v11    # "protocols":[Ljava/lang/String;
    .restart local v12    # "s":Ljavax/net/ssl/SSLSocket;
    :cond_6
    const/4 v8, 0x0

    #@c0
    .line 540
    .local v8, "isDefaultHostnameVerifier":Z
    move-object/from16 v0, p0

    #@c2
    iget-object v13, v0, Lsun/net/www/protocol/https/HttpsClient;->hv:Ljavax/net/ssl/HostnameVerifier;

    #@c4
    if-eqz v13, :cond_8

    #@c6
    .line 541
    move-object/from16 v0, p0

    #@c8
    iget-object v13, v0, Lsun/net/www/protocol/https/HttpsClient;->hv:Ljavax/net/ssl/HostnameVerifier;

    #@ca
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@cd
    move-result-object v13

    #@ce
    invoke-virtual {v13}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@d1
    move-result-object v1

    #@d2
    .line 542
    .local v1, "canonicalName":Ljava/lang/String;
    if-eqz v1, :cond_7

    #@d4
    .line 543
    const-string/jumbo v13, "javax.net.ssl.DefaultHostnameVerifier"

    #@d7
    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@da
    move-result v13

    #@db
    .line 542
    if-eqz v13, :cond_7

    #@dd
    .line 544
    const/4 v8, 0x1

    #@de
    .line 553
    .end local v1    # "canonicalName":Ljava/lang/String;
    :cond_7
    :goto_3
    if-eqz v8, :cond_3

    #@e0
    .line 556
    invoke-virtual {v12}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@e3
    move-result-object v10

    #@e4
    .line 557
    .local v10, "paramaters":Ljavax/net/ssl/SSLParameters;
    const-string/jumbo v13, "HTTPS"

    #@e7
    invoke-virtual {v10, v13}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    #@ea
    .line 558
    invoke-virtual {v12, v10}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    #@ed
    .line 560
    const/4 v9, 0x0

    #@ee
    goto/16 :goto_1

    #@f0
    .line 550
    .end local v10    # "paramaters":Ljavax/net/ssl/SSLParameters;
    :cond_8
    const/4 v8, 0x1

    #@f1
    goto :goto_3

    #@f2
    .line 572
    .end local v8    # "isDefaultHostnameVerifier":Z
    :catch_2
    move-exception v3

    #@f3
    .line 573
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v13, Ljava/lang/InternalError;

    #@f5
    new-instance v14, Ljava/lang/StringBuilder;

    #@f7
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@fa
    sget-object v15, Lsun/net/www/protocol/https/HttpsClient;->encoding:Ljava/lang/String;

    #@fc
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v14

    #@100
    const-string/jumbo v15, " encoding not found"

    #@103
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v14

    #@107
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v14

    #@10b
    invoke-direct {v13, v14}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@10e
    throw v13

    #@10f
    .line 584
    .end local v2    # "ciphers":[Ljava/lang/String;
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v6    # "identification":Ljava/lang/String;
    .end local v9    # "needToCheckSpoofing":Z
    .end local v11    # "protocols":[Ljava/lang/String;
    .end local v12    # "s":Ljavax/net/ssl/SSLSocket;
    :cond_9
    move-object/from16 v0, p0

    #@111
    iget-object v13, v0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@113
    check-cast v13, Ljavax/net/ssl/SSLSocket;

    #@115
    invoke-virtual {v13}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    #@118
    move-result-object v13

    #@119
    move-object/from16 v0, p0

    #@11b
    iput-object v13, v0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    #@11d
    goto/16 :goto_2
.end method

.method public closeIdleConnection()V
    .locals 4

    #@0
    .prologue
    .line 672
    sget-object v1, Lsun/net/www/protocol/https/HttpsClient;->kac:Lsun/net/www/http/KeepAliveCache;

    #@2
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@4
    iget-object v3, p0, Lsun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@6
    invoke-virtual {v1, v2, v3}, Lsun/net/www/http/KeepAliveCache;->get(Ljava/net/URL;Ljava/lang/Object;)Lsun/net/www/http/HttpClient;

    #@9
    move-result-object v0

    #@a
    .line 673
    .local v0, "http":Lsun/net/www/http/HttpClient;
    if-eqz v0, :cond_0

    #@c
    .line 674
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V

    #@f
    .line 671
    :cond_0
    return-void
.end method

.method protected createSocket()Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 410
    :try_start_0
    iget-object v2, p0, Lsun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@2
    invoke-virtual {v2}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v2

    #@6
    return-object v2

    #@7
    .line 411
    :catch_0
    move-exception v0

    #@8
    .line 418
    .local v0, "se":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@b
    move-result-object v1

    #@c
    .line 419
    .local v1, "t":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    #@e
    instance-of v2, v1, Ljava/lang/UnsupportedOperationException;

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 420
    invoke-super {p0}, Lsun/net/www/http/HttpClient;->createSocket()Ljava/net/Socket;

    #@15
    move-result-object v2

    #@16
    return-object v2

    #@17
    .line 422
    :cond_0
    throw v0
.end method

.method getCipherSuite()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 682
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    #@2
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected getDefaultPort()I
    .locals 1

    #@0
    .prologue
    .line 123
    const/16 v0, 0x1bb

    #@2
    return v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    #@0
    .prologue
    .line 690
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    #@2
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getLocalPrincipal()Ljava/security/Principal;
    .locals 4

    #@0
    .prologue
    .line 744
    :try_start_0
    iget-object v3, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    #@2
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v2

    #@6
    .line 756
    :cond_0
    :goto_0
    return-object v2

    #@7
    .line 745
    :catch_0
    move-exception v1

    #@8
    .line 746
    .local v1, "e":Ljava/lang/AbstractMethodError;
    const/4 v2, 0x0

    #@9
    .line 750
    .local v2, "principal":Ljava/security/Principal;
    iget-object v3, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    #@b
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    #@e
    move-result-object v0

    #@f
    .line 751
    .local v0, "certs":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    #@11
    .line 753
    const/4 v3, 0x0

    #@12
    aget-object v3, v0, v3

    #@14
    check-cast v3, Ljava/security/cert/X509Certificate;

    #@16
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@19
    move-result-object v2

    #@1a
    .local v2, "principal":Ljava/security/Principal;
    goto :goto_0
.end method

.method getPeerPrincipal()Ljava/security/Principal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 724
    :try_start_0
    iget-object v3, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    #@2
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v2

    #@6
    .line 733
    .local v2, "principal":Ljava/security/Principal;
    :goto_0
    return-object v2

    #@7
    .line 725
    .end local v2    # "principal":Ljava/security/Principal;
    :catch_0
    move-exception v1

    #@8
    .line 729
    .local v1, "e":Ljava/lang/AbstractMethodError;
    iget-object v3, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    #@a
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    #@d
    move-result-object v0

    #@e
    .line 731
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    #@f
    aget-object v3, v0, v3

    #@11
    check-cast v3, Ljava/security/cert/X509Certificate;

    #@13
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@16
    move-result-object v2

    #@17
    .restart local v2    # "principal":Ljava/security/Principal;
    goto :goto_0
.end method

.method public getProxyHostUsed()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 778
    invoke-virtual {p0}, Lsun/net/www/protocol/https/HttpsClient;->needsTunneling()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 779
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 781
    :cond_0
    invoke-super {p0}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getProxyPortUsed()I
    .locals 2

    #@0
    .prologue
    .line 791
    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@6
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@9
    move-result-object v0

    #@a
    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@c
    if-ne v0, v1, :cond_1

    #@e
    .line 792
    :cond_0
    const/4 v0, -0x1

    #@f
    .line 791
    :goto_0
    return v0

    #@10
    .line 792
    :cond_1
    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@12
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@15
    move-result-object v0

    #@16
    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@18
    if-eq v0, v1, :cond_0

    #@1a
    .line 793
    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@1c
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/net/InetSocketAddress;

    #@22
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@25
    move-result v0

    #@26
    goto :goto_0
.end method

.method getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    #@0
    .prologue
    .line 399
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@2
    return-object v0
.end method

.method getServerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 711
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    #@2
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 701
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    #@2
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 1
    .param p1, "event"    # Ljavax/net/ssl/HandshakeCompletedEvent;

    #@0
    .prologue
    .line 769
    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSession()Ljavax/net/ssl/SSLSession;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lsun/net/www/protocol/https/HttpsClient;->session:Ljavax/net/ssl/SSLSession;

    #@6
    .line 767
    return-void
.end method

.method public needsTunneling()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 430
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@7
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@a
    move-result-object v1

    #@b
    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@d
    if-eq v1, v2, :cond_0

    #@f
    .line 431
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@11
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@14
    move-result-object v1

    #@15
    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@17
    if-eq v1, v2, :cond_0

    #@19
    const/4 v0, 0x1

    #@1a
    .line 430
    :cond_0
    return v0
.end method

.method protected putInKeepAliveCache()V
    .locals 3

    #@0
    .prologue
    .line 659
    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->inCache:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 660
    sget-boolean v0, Lsun/net/www/protocol/https/HttpsClient;->-assertionsDisabled:Z

    #@6
    if-nez v0, :cond_0

    #@8
    new-instance v0, Ljava/lang/AssertionError;

    #@a
    const-string/jumbo v1, "Duplicate put to keep alive cache"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@10
    throw v0

    #@11
    .line 661
    :cond_0
    return-void

    #@12
    .line 663
    :cond_1
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lsun/net/www/http/HttpClient;->inCache:Z

    #@15
    .line 664
    sget-object v0, Lsun/net/www/protocol/https/HttpsClient;->kac:Lsun/net/www/http/KeepAliveCache;

    #@17
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@19
    iget-object v2, p0, Lsun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@1b
    invoke-virtual {v0, v1, v2, p0}, Lsun/net/www/http/KeepAliveCache;->put(Ljava/net/URL;Ljava/lang/Object;Lsun/net/www/http/HttpClient;)V

    #@1e
    .line 658
    return-void
.end method

.method setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0
    .param p1, "hv"    # Ljavax/net/ssl/HostnameVerifier;

    #@0
    .prologue
    .line 391
    iput-object p1, p0, Lsun/net/www/protocol/https/HttpsClient;->hv:Ljavax/net/ssl/HostnameVerifier;

    #@2
    .line 390
    return-void
.end method

.method setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;

    #@0
    .prologue
    .line 395
    iput-object p1, p0, Lsun/net/www/protocol/https/HttpsClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@2
    .line 394
    return-void
.end method
