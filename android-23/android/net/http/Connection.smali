.class abstract Landroid/net/http/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# static fields
.field private static final DONE:I = 0x3

.field private static final DRAIN:I = 0x2

.field private static final HTTP_CONNECTION:Ljava/lang/String; = "http.connection"

.field private static final MAX_PIPE:I = 0x3

.field private static final MIN_PIPE:I = 0x2

.field private static final READ:I = 0x1

.field private static final RETRY_REQUEST_LIMIT:I = 0x2

.field private static final SEND:I = 0x0

.field static final SOCKET_TIMEOUT:I = 0xea60

.field private static STATE_CANCEL_REQUESTED:I

.field private static STATE_NORMAL:I

.field private static final states:[Ljava/lang/String;


# instance fields
.field private mActive:I

.field private mBuf:[B

.field private mCanPersist:Z

.field protected mCertificate:Landroid/net/http/SslCertificate;

.field mContext:Landroid/content/Context;

.field mHost:Lorg/apache/http/HttpHost;

.field protected mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

.field private mHttpContext:Lorg/apache/http/protocol/HttpContext;

.field mRequestFeeder:Landroid/net/http/RequestFeeder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 50
    const/4 v0, 0x4

    #@3
    new-array v0, v0, [Ljava/lang/String;

    #@5
    const-string/jumbo v1, "SEND"

    #@8
    aput-object v1, v0, v3

    #@a
    const-string/jumbo v1, "READ"

    #@d
    aput-object v1, v0, v4

    #@f
    const-string/jumbo v1, "DRAIN"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    const-string/jumbo v1, "DONE"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    sput-object v0, Landroid/net/http/Connection;->states:[Ljava/lang/String;

    #@1d
    .line 78
    sput v3, Landroid/net/http/Connection;->STATE_NORMAL:I

    #@1f
    .line 79
    sput v4, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    #@21
    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "requestFeeder"    # Landroid/net/http/RequestFeeder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 55
    iput-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    #@6
    .line 63
    iput-object v1, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    #@8
    .line 80
    sget v0, Landroid/net/http/Connection;->STATE_NORMAL:I

    #@a
    iput v0, p0, Landroid/net/http/Connection;->mActive:I

    #@c
    .line 103
    iput-object p1, p0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    #@e
    .line 104
    iput-object p2, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    #@10
    .line 105
    iput-object p3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    #@12
    .line 107
    const/4 v0, 0x0

    #@13
    iput-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    #@15
    .line 108
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    #@17
    invoke-direct {v0, v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    #@1a
    iput-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    #@1c
    .line 102
    return-void
.end method

.method private clearPipe(Ljava/util/LinkedList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 325
    .local p1, "pipe":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v0, 0x1

    #@1
    .line 328
    .local v0, "empty":Z
    iget-object v3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    #@3
    monitor-enter v3

    #@4
    .line 330
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 331
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Landroid/net/http/Request;

    #@10
    .line 334
    .local v1, "tReq":Landroid/net/http/Request;
    iget-object v2, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    #@12
    invoke-interface {v2, v1}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;)V

    #@15
    .line 335
    const/4 v0, 0x0

    #@16
    goto :goto_0

    #@17
    .line 337
    .end local v1    # "tReq":Landroid/net/http/Request;
    :cond_0
    if-eqz v0, :cond_1

    #@19
    iget-object v2, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    #@1b
    iget-object v4, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    #@1d
    invoke-interface {v2, v4}, Landroid/net/http/RequestFeeder;->haveRequest(Lorg/apache/http/HttpHost;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    const/4 v0, 0x0

    #@24
    :cond_1
    :goto_1
    monitor-exit v3

    #@25
    .line 339
    return v0

    #@26
    .line 337
    :cond_2
    const/4 v0, 0x1

    #@27
    goto :goto_1

    #@28
    .line 328
    :catchall_0
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
    throw v2
.end method

.method static getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "proxy"    # Lorg/apache/http/HttpHost;
    .param p3, "requestFeeder"    # Landroid/net/http/RequestFeeder;

    #@0
    .prologue
    .line 123
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "http"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 124
    new-instance v0, Landroid/net/http/HttpConnection;

    #@f
    invoke-direct {v0, p0, p1, p3}, Landroid/net/http/HttpConnection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    #@12
    return-object v0

    #@13
    .line 128
    :cond_0
    new-instance v0, Landroid/net/http/HttpsConnection;

    #@15
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/http/HttpsConnection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    #@18
    return-object v0
.end method

.method private static getEventHandlerErrorString(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorId"    # I

    #@0
    .prologue
    .line 452
    packed-switch p0, :pswitch_data_0

    #@3
    .line 502
    const-string/jumbo v0, "UNKNOWN_ERROR"

    #@6
    return-object v0

    #@7
    .line 454
    :pswitch_0
    const-string/jumbo v0, "OK"

    #@a
    return-object v0

    #@b
    .line 457
    :pswitch_1
    const-string/jumbo v0, "ERROR"

    #@e
    return-object v0

    #@f
    .line 460
    :pswitch_2
    const-string/jumbo v0, "ERROR_LOOKUP"

    #@12
    return-object v0

    #@13
    .line 463
    :pswitch_3
    const-string/jumbo v0, "ERROR_UNSUPPORTED_AUTH_SCHEME"

    #@16
    return-object v0

    #@17
    .line 466
    :pswitch_4
    const-string/jumbo v0, "ERROR_AUTH"

    #@1a
    return-object v0

    #@1b
    .line 469
    :pswitch_5
    const-string/jumbo v0, "ERROR_PROXYAUTH"

    #@1e
    return-object v0

    #@1f
    .line 472
    :pswitch_6
    const-string/jumbo v0, "ERROR_CONNECT"

    #@22
    return-object v0

    #@23
    .line 475
    :pswitch_7
    const-string/jumbo v0, "ERROR_IO"

    #@26
    return-object v0

    #@27
    .line 478
    :pswitch_8
    const-string/jumbo v0, "ERROR_TIMEOUT"

    #@2a
    return-object v0

    #@2b
    .line 481
    :pswitch_9
    const-string/jumbo v0, "ERROR_REDIRECT_LOOP"

    #@2e
    return-object v0

    #@2f
    .line 484
    :pswitch_a
    const-string/jumbo v0, "ERROR_UNSUPPORTED_SCHEME"

    #@32
    return-object v0

    #@33
    .line 487
    :pswitch_b
    const-string/jumbo v0, "ERROR_FAILED_SSL_HANDSHAKE"

    #@36
    return-object v0

    #@37
    .line 490
    :pswitch_c
    const-string/jumbo v0, "ERROR_BAD_URL"

    #@3a
    return-object v0

    #@3b
    .line 493
    :pswitch_d
    const-string/jumbo v0, "FILE_ERROR"

    #@3e
    return-object v0

    #@3f
    .line 496
    :pswitch_e
    const-string/jumbo v0, "FILE_NOT_FOUND_ERROR"

    #@42
    return-object v0

    #@43
    .line 499
    :pswitch_f
    const-string/jumbo v0, "TOO_MANY_REQUESTS_ERROR"

    #@46
    return-object v0

    #@47
    .line 452
    nop

    #@48
    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z
    .locals 5
    .param p1, "req"    # Landroid/net/http/Request;
    .param p2, "errorId"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 425
    const/4 v2, 0x1

    #@1
    .line 432
    .local v2, "ret":Z
    iget v3, p1, Landroid/net/http/Request;->mFailCount:I

    #@3
    add-int/lit8 v3, v3, 0x1

    #@5
    iput v3, p1, Landroid/net/http/Request;->mFailCount:I

    #@7
    const/4 v4, 0x2

    #@8
    if-lt v3, v4, :cond_0

    #@a
    .line 433
    const/4 v2, 0x0

    #@b
    .line 435
    if-gez p2, :cond_1

    #@d
    .line 436
    invoke-static {p2}, Landroid/net/http/Connection;->getEventHandlerErrorString(I)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 441
    .local v1, "error":Ljava/lang/String;
    :goto_0
    iget-object v3, p1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    #@13
    invoke-interface {v3, p2, v1}, Landroid/net/http/EventHandler;->error(ILjava/lang/String;)V

    #@16
    .line 442
    invoke-virtual {p1}, Landroid/net/http/Request;->complete()V

    #@19
    .line 445
    .end local v1    # "error":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    #@1c
    .line 446
    iget-object v3, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    #@1e
    const-string/jumbo v4, "http.connection"

    #@21
    invoke-interface {v3, v4}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@24
    .line 448
    return v2

    #@25
    .line 438
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    #@28
    move-result-object v0

    #@29
    .line 439
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    #@2b
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .restart local v1    # "error":Ljava/lang/String;
    goto :goto_0

    #@30
    .end local v1    # "error":Ljava/lang/String;
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .restart local v1    # "error":Ljava/lang/String;
    goto :goto_0
.end method

.method private keepAlive(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 8
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p3, "connType"    # I
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 517
    const-string/jumbo v3, "http.connection"

    #@5
    invoke-interface {p4, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    .line 516
    check-cast v0, Lorg/apache/http/HttpConnection;

    #@b
    .line 519
    .local v0, "conn":Lorg/apache/http/HttpConnection;
    if-eqz v0, :cond_0

    #@d
    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->isOpen()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_2

    #@13
    .line 523
    :cond_0
    if-eqz p1, :cond_3

    #@15
    .line 524
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@18
    move-result-wide v4

    #@19
    const-wide/16 v6, 0x0

    #@1b
    cmp-long v3, v4, v6

    #@1d
    if-gez v3, :cond_3

    #@1f
    .line 525
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isChunked()Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    #@27
    invoke-virtual {p2, v3}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_3

    #@2d
    .line 528
    :cond_1
    return v1

    #@2e
    .line 520
    :cond_2
    return v1

    #@2f
    .line 533
    :cond_3
    if-ne p3, v2, :cond_4

    #@31
    .line 534
    return v1

    #@32
    .line 535
    :cond_4
    const/4 v3, 0x2

    #@33
    if-ne p3, v3, :cond_5

    #@35
    .line 536
    return v2

    #@36
    .line 539
    :cond_5
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    #@38
    invoke-virtual {p2, v3}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_6

    #@3e
    :goto_0
    return v1

    #@3f
    :cond_6
    move v1, v2

    #@40
    goto :goto_0
.end method

.method private openHttpConnection(Landroid/net/http/Request;)Z
    .locals 12
    .param p1, "req"    # Landroid/net/http/Request;

    #@0
    .prologue
    .line 347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v8

    #@4
    .line 348
    .local v8, "now":J
    const/4 v5, 0x0

    #@5
    .line 349
    .local v5, "error":I
    const/4 v6, 0x0

    #@6
    .line 353
    .local v6, "exception":Ljava/lang/Exception;
    const/4 v7, 0x0

    #@7
    :try_start_0
    iput-object v7, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    #@9
    .line 354
    invoke-virtual {p0, p1}, Landroid/net/http/Connection;->openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;

    #@c
    move-result-object v7

    #@d
    iput-object v7, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    #@f
    .line 355
    iget-object v7, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    #@11
    if-eqz v7, :cond_0

    #@13
    .line 356
    iget-object v7, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    #@15
    const v10, 0xea60

    #@18
    invoke-virtual {v7, v10}, Landroid/net/http/AndroidHttpClientConnection;->setSocketTimeout(I)V

    #@1b
    .line 357
    iget-object v7, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    #@1d
    const-string/jumbo v10, "http.connection"

    #@20
    .line 358
    iget-object v11, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    #@22
    .line 357
    invoke-interface {v7, v10, v11}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@25
    .line 400
    .end local v6    # "exception":Ljava/lang/Exception;
    :goto_0
    if-nez v5, :cond_1

    #@27
    .line 401
    const/4 v7, 0x1

    #@28
    return v7

    #@29
    .line 363
    .restart local v6    # "exception":Ljava/lang/Exception;
    :cond_0
    const/4 v7, 0x2

    #@2a
    iput v7, p1, Landroid/net/http/Request;->mFailCount:I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/net/http/SSLConnectionClosedByUserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 364
    const/4 v7, 0x0

    #@2d
    return v7

    #@2e
    .line 389
    :catch_0
    move-exception v1

    #@2f
    .line 390
    .local v1, "e":Ljava/io/IOException;
    const/4 v5, -0x6

    #@30
    .line 391
    move-object v6, v1

    #@31
    .local v6, "exception":Ljava/lang/Exception;
    goto :goto_0

    #@32
    .line 381
    .end local v1    # "e":Ljava/io/IOException;
    .local v6, "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    #@33
    .line 384
    .local v4, "e":Ljavax/net/ssl/SSLHandshakeException;
    const/4 v7, 0x2

    #@34
    iput v7, p1, Landroid/net/http/Request;->mFailCount:I

    #@36
    .line 387
    const/16 v5, -0xb

    #@38
    .line 388
    move-object v6, v4

    #@39
    .local v6, "exception":Ljava/lang/Exception;
    goto :goto_0

    #@3a
    .line 375
    .end local v4    # "e":Ljavax/net/ssl/SSLHandshakeException;
    .local v6, "exception":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    #@3b
    .line 378
    .local v0, "e":Landroid/net/http/SSLConnectionClosedByUserException;
    const/4 v7, 0x2

    #@3c
    iput v7, p1, Landroid/net/http/Request;->mFailCount:I

    #@3e
    .line 380
    const/4 v7, 0x0

    #@3f
    return v7

    #@40
    .line 370
    .end local v0    # "e":Landroid/net/http/SSLConnectionClosedByUserException;
    :catch_3
    move-exception v2

    #@41
    .line 372
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const/4 v5, -0x6

    #@42
    .line 373
    const/4 v7, 0x2

    #@43
    iput v7, p1, Landroid/net/http/Request;->mFailCount:I

    #@45
    .line 374
    move-object v6, v2

    #@46
    .local v6, "exception":Ljava/lang/Exception;
    goto :goto_0

    #@47
    .line 366
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .local v6, "exception":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    #@48
    .line 368
    .local v3, "e":Ljava/net/UnknownHostException;
    const/4 v5, -0x2

    #@49
    .line 369
    move-object v6, v3

    #@4a
    .local v6, "exception":Ljava/lang/Exception;
    goto :goto_0

    #@4b
    .line 403
    .end local v3    # "e":Ljava/net/UnknownHostException;
    .end local v6    # "exception":Ljava/lang/Exception;
    :cond_1
    iget v7, p1, Landroid/net/http/Request;->mFailCount:I

    #@4d
    const/4 v10, 0x2

    #@4e
    if-ge v7, v10, :cond_2

    #@50
    .line 405
    iget-object v7, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    #@52
    invoke-interface {v7, p1}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;)V

    #@55
    .line 406
    iget v7, p1, Landroid/net/http/Request;->mFailCount:I

    #@57
    add-int/lit8 v7, v7, 0x1

    #@59
    iput v7, p1, Landroid/net/http/Request;->mFailCount:I

    #@5b
    .line 410
    :goto_1
    if-nez v5, :cond_3

    #@5d
    const/4 v7, 0x1

    #@5e
    :goto_2
    return v7

    #@5f
    .line 408
    :cond_2
    invoke-direct {p0, p1, v5, v6}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    #@62
    goto :goto_1

    #@63
    .line 410
    :cond_3
    const/4 v7, 0x0

    #@64
    goto :goto_2
.end method


# virtual methods
.method cancel()V
    .locals 1

    #@0
    .prologue
    .line 144
    sget v0, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    #@2
    iput v0, p0, Landroid/net/http/Connection;->mActive:I

    #@4
    .line 145
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    #@7
    .line 143
    return-void
.end method

.method abstract closeConnection()V
.end method

.method getBuf()[B
    .locals 1

    #@0
    .prologue
    .line 568
    iget-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    #@2
    if-nez v0, :cond_0

    #@4
    const/16 v0, 0x2000

    #@6
    new-array v0, v0, [B

    #@8
    iput-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    #@a
    .line 569
    :cond_0
    iget-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    #@c
    return-object v0
.end method

.method getCanPersist()Z
    .locals 1

    #@0
    .prologue
    .line 551
    iget-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    #@2
    return v0
.end method

.method getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    #@2
    return-object v0
.end method

.method getHost()Lorg/apache/http/HttpHost;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    #@2
    return-object v0
.end method

.method getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    #@2
    return-object v0
.end method

.method abstract getScheme()Ljava/lang/String;
.end method

.method abstract openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method processRequests(Landroid/net/http/Request;)V
    .locals 18
    .param p1, "firstRequest"    # Landroid/net/http/Request;

    #@0
    .prologue
    .line 155
    const/4 v13, 0x0

    #@1
    .line 157
    .local v13, "req":Landroid/net/http/Request;
    const/4 v7, 0x0

    #@2
    .line 158
    .local v7, "error":I
    const/4 v8, 0x0

    #@3
    .line 160
    .local v8, "exception":Ljava/lang/Exception;
    new-instance v11, Ljava/util/LinkedList;

    #@5
    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    #@8
    .line 162
    .local v11, "pipe":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v10, 0x2

    #@9
    .local v10, "minPipe":I
    const/4 v9, 0x3

    #@a
    .line 163
    .local v9, "maxPipe":I
    const/4 v14, 0x0

    #@b
    .line 165
    .end local v8    # "exception":Ljava/lang/Exception;
    .end local v13    # "req":Landroid/net/http/Request;
    .end local p1    # "firstRequest":Landroid/net/http/Request;
    .local v14, "state":I
    :cond_0
    :goto_0
    const/16 v16, 0x3

    #@d
    move/from16 v0, v16

    #@f
    if-eq v14, v0, :cond_14

    #@11
    .line 172
    move-object/from16 v0, p0

    #@13
    iget v0, v0, Landroid/net/http/Connection;->mActive:I

    #@15
    move/from16 v16, v0

    #@17
    sget v17, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    #@19
    move/from16 v0, v16

    #@1b
    move/from16 v1, v17

    #@1d
    if-ne v0, v1, :cond_1

    #@1f
    .line 174
    const-wide/16 v16, 0x64

    #@21
    :try_start_0
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 176
    :goto_1
    sget v16, Landroid/net/http/Connection;->STATE_NORMAL:I

    #@26
    move/from16 v0, v16

    #@28
    move-object/from16 v1, p0

    #@2a
    iput v0, v1, Landroid/net/http/Connection;->mActive:I

    #@2c
    .line 179
    :cond_1
    packed-switch v14, :pswitch_data_0

    #@2f
    goto :goto_0

    #@30
    .line 181
    :pswitch_0
    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    #@33
    move-result v16

    #@34
    move/from16 v0, v16

    #@36
    if-ne v0, v9, :cond_2

    #@38
    .line 182
    const/4 v14, 0x1

    #@39
    .line 183
    goto :goto_0

    #@3a
    .line 175
    :catch_0
    move-exception v15

    #@3b
    .local v15, "x":Ljava/lang/InterruptedException;
    goto :goto_1

    #@3c
    .line 186
    .end local v15    # "x":Ljava/lang/InterruptedException;
    :cond_2
    if-nez p1, :cond_3

    #@3e
    .line 187
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    #@42
    move-object/from16 v16, v0

    #@44
    move-object/from16 v0, p0

    #@46
    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    #@48
    move-object/from16 v17, v0

    #@4a
    invoke-interface/range {v16 .. v17}, Landroid/net/http/RequestFeeder;->getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;

    #@4d
    move-result-object v13

    #@4e
    .line 192
    .local v13, "req":Landroid/net/http/Request;
    :goto_2
    if-nez v13, :cond_4

    #@50
    .line 193
    const/4 v14, 0x2

    #@51
    .line 194
    goto :goto_0

    #@52
    .line 189
    .end local v13    # "req":Landroid/net/http/Request;
    :cond_3
    move-object/from16 v13, p1

    #@54
    .line 190
    .restart local v13    # "req":Landroid/net/http/Request;
    const/16 p1, 0x0

    #@56
    .local p1, "firstRequest":Landroid/net/http/Request;
    goto :goto_2

    #@57
    .line 196
    .end local p1    # "firstRequest":Landroid/net/http/Request;
    :cond_4
    move-object/from16 v0, p0

    #@59
    invoke-virtual {v13, v0}, Landroid/net/http/Request;->setConnection(Landroid/net/http/Connection;)V

    #@5c
    .line 199
    iget-boolean v0, v13, Landroid/net/http/Request;->mCancelled:Z

    #@5e
    move/from16 v16, v0

    #@60
    if-eqz v16, :cond_5

    #@62
    .line 203
    invoke-virtual {v13}, Landroid/net/http/Request;->complete()V

    #@65
    goto :goto_0

    #@66
    .line 207
    :cond_5
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    #@6a
    move-object/from16 v16, v0

    #@6c
    if-eqz v16, :cond_8

    #@6e
    .line 208
    move-object/from16 v0, p0

    #@70
    iget-object v0, v0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    #@72
    move-object/from16 v16, v0

    #@74
    invoke-virtual/range {v16 .. v16}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    #@77
    move-result v16

    #@78
    if-eqz v16, :cond_8

    #@7a
    .line 225
    :cond_6
    iget-object v0, v13, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    #@7c
    move-object/from16 v16, v0

    #@7e
    move-object/from16 v0, p0

    #@80
    iget-object v0, v0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    #@82
    move-object/from16 v17, v0

    #@84
    invoke-interface/range {v16 .. v17}, Landroid/net/http/EventHandler;->certificate(Landroid/net/http/SslCertificate;)V

    #@87
    .line 231
    :try_start_1
    move-object/from16 v0, p0

    #@89
    iget-object v0, v0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    #@8b
    move-object/from16 v16, v0

    #@8d
    move-object/from16 v0, v16

    #@8f
    invoke-virtual {v13, v0}, Landroid/net/http/Request;->sendRequest(Landroid/net/http/AndroidHttpClientConnection;)V
    :try_end_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    #@92
    .line 242
    :goto_3
    if-eqz v8, :cond_b

    #@94
    .line 243
    move-object/from16 v0, p0

    #@96
    invoke-direct {v0, v13, v7, v8}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    #@99
    move-result v16

    #@9a
    if-eqz v16, :cond_7

    #@9c
    .line 244
    iget-boolean v0, v13, Landroid/net/http/Request;->mCancelled:Z

    #@9e
    move/from16 v16, v0

    #@a0
    if-eqz v16, :cond_9

    #@a2
    .line 249
    :cond_7
    :goto_4
    const/4 v8, 0x0

    #@a3
    .line 250
    .restart local v8    # "exception":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@a5
    invoke-direct {v0, v11}, Landroid/net/http/Connection;->clearPipe(Ljava/util/LinkedList;)Z

    #@a8
    move-result v16

    #@a9
    if-eqz v16, :cond_a

    #@ab
    const/4 v14, 0x3

    #@ac
    .line 251
    :goto_5
    const/4 v9, 0x1

    #@ad
    const/4 v10, 0x1

    #@ae
    .line 252
    goto/16 :goto_0

    #@b0
    .line 215
    .end local v8    # "exception":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    #@b2
    invoke-direct {v0, v13}, Landroid/net/http/Connection;->openHttpConnection(Landroid/net/http/Request;)Z

    #@b5
    move-result v16

    #@b6
    if-nez v16, :cond_6

    #@b8
    .line 216
    const/4 v14, 0x3

    #@b9
    .line 217
    goto/16 :goto_0

    #@bb
    .line 238
    :catch_1
    move-exception v3

    #@bc
    .line 239
    .local v3, "e":Ljava/lang/IllegalStateException;
    move-object v8, v3

    #@bd
    .line 240
    .local v8, "exception":Ljava/lang/Exception;
    const/4 v7, -0x7

    #@be
    goto :goto_3

    #@bf
    .line 235
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .end local v8    # "exception":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    #@c0
    .line 236
    .local v2, "e":Ljava/io/IOException;
    move-object v8, v2

    #@c1
    .line 237
    .restart local v8    # "exception":Ljava/lang/Exception;
    const/4 v7, -0x7

    #@c2
    goto :goto_3

    #@c3
    .line 232
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "exception":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    #@c4
    .line 233
    .local v4, "e":Lorg/apache/http/HttpException;
    move-object v8, v4

    #@c5
    .line 234
    .restart local v8    # "exception":Ljava/lang/Exception;
    const/4 v7, -0x1

    #@c6
    goto :goto_3

    #@c7
    .line 247
    .end local v4    # "e":Lorg/apache/http/HttpException;
    .end local v8    # "exception":Ljava/lang/Exception;
    :cond_9
    invoke-virtual {v11, v13}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    #@ca
    goto :goto_4

    #@cb
    .line 250
    .local v8, "exception":Ljava/lang/Exception;
    :cond_a
    const/4 v14, 0x0

    #@cc
    goto :goto_5

    #@cd
    .line 255
    .end local v8    # "exception":Ljava/lang/Exception;
    :cond_b
    invoke-virtual {v11, v13}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    #@d0
    .line 256
    move-object/from16 v0, p0

    #@d2
    iget-boolean v0, v0, Landroid/net/http/Connection;->mCanPersist:Z

    #@d4
    move/from16 v16, v0

    #@d6
    if-nez v16, :cond_0

    #@d8
    const/4 v14, 0x1

    #@d9
    goto/16 :goto_0

    #@db
    .line 262
    .end local v13    # "req":Landroid/net/http/Request;
    :pswitch_1
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    #@df
    move-object/from16 v16, v0

    #@e1
    move-object/from16 v0, p0

    #@e3
    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    #@e5
    move-object/from16 v17, v0

    #@e7
    invoke-interface/range {v16 .. v17}, Landroid/net/http/RequestFeeder;->haveRequest(Lorg/apache/http/HttpHost;)Z

    #@ea
    move-result v16

    #@eb
    if-eqz v16, :cond_d

    #@ed
    const/4 v6, 0x0

    #@ee
    .line 263
    .local v6, "empty":Z
    :goto_6
    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    #@f1
    move-result v12

    #@f2
    .line 264
    .local v12, "pipeSize":I
    const/16 v16, 0x2

    #@f4
    move/from16 v0, v16

    #@f6
    if-eq v14, v0, :cond_c

    #@f8
    if-ge v12, v10, :cond_c

    #@fa
    .line 265
    if-eqz v6, :cond_e

    #@fc
    .line 268
    :cond_c
    if-nez v12, :cond_10

    #@fe
    .line 270
    if-eqz v6, :cond_f

    #@100
    const/4 v14, 0x3

    #@101
    goto/16 :goto_0

    #@103
    .line 262
    .end local v6    # "empty":Z
    .end local v12    # "pipeSize":I
    :cond_d
    const/4 v6, 0x1

    #@104
    .restart local v6    # "empty":Z
    goto :goto_6

    #@105
    .line 265
    .restart local v12    # "pipeSize":I
    :cond_e
    move-object/from16 v0, p0

    #@107
    iget-boolean v0, v0, Landroid/net/http/Connection;->mCanPersist:Z

    #@109
    move/from16 v16, v0

    #@10b
    .line 264
    if-eqz v16, :cond_c

    #@10d
    .line 266
    const/4 v14, 0x0

    #@10e
    .line 267
    goto/16 :goto_0

    #@110
    .line 270
    :cond_f
    const/4 v14, 0x0

    #@111
    goto/16 :goto_0

    #@113
    .line 274
    :cond_10
    invoke-virtual {v11}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    #@116
    move-result-object v13

    #@117
    check-cast v13, Landroid/net/http/Request;

    #@119
    .line 279
    .restart local v13    # "req":Landroid/net/http/Request;
    :try_start_2
    move-object/from16 v0, p0

    #@11b
    iget-object v0, v0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    #@11d
    move-object/from16 v16, v0

    #@11f
    move-object/from16 v0, v16

    #@121
    invoke-virtual {v13, v0}, Landroid/net/http/Request;->readResponse(Landroid/net/http/AndroidHttpClientConnection;)V
    :try_end_2
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4

    #@124
    .line 290
    :goto_7
    if-eqz v8, :cond_12

    #@126
    .line 291
    move-object/from16 v0, p0

    #@128
    invoke-direct {v0, v13, v7, v8}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    #@12b
    move-result v16

    #@12c
    if-eqz v16, :cond_11

    #@12e
    .line 292
    iget-boolean v0, v13, Landroid/net/http/Request;->mCancelled:Z

    #@130
    move/from16 v16, v0

    #@132
    if-eqz v16, :cond_13

    #@134
    .line 298
    :cond_11
    :goto_8
    const/4 v8, 0x0

    #@135
    .line 299
    .restart local v8    # "exception":Ljava/lang/Exception;
    const/16 v16, 0x0

    #@137
    move/from16 v0, v16

    #@139
    move-object/from16 v1, p0

    #@13b
    iput-boolean v0, v1, Landroid/net/http/Connection;->mCanPersist:Z

    #@13d
    .line 301
    .end local v8    # "exception":Ljava/lang/Exception;
    :cond_12
    move-object/from16 v0, p0

    #@13f
    iget-boolean v0, v0, Landroid/net/http/Connection;->mCanPersist:Z

    #@141
    move/from16 v16, v0

    #@143
    if-nez v16, :cond_0

    #@145
    .line 306
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Connection;->closeConnection()V

    #@148
    .line 308
    move-object/from16 v0, p0

    #@14a
    iget-object v0, v0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    #@14c
    move-object/from16 v16, v0

    #@14e
    const-string/jumbo v17, "http.connection"

    #@151
    invoke-interface/range {v16 .. v17}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@154
    .line 309
    move-object/from16 v0, p0

    #@156
    invoke-direct {v0, v11}, Landroid/net/http/Connection;->clearPipe(Ljava/util/LinkedList;)Z

    #@159
    .line 310
    const/4 v9, 0x1

    #@15a
    const/4 v10, 0x1

    #@15b
    .line 311
    const/4 v14, 0x0

    #@15c
    goto/16 :goto_0

    #@15e
    .line 286
    :catch_4
    move-exception v3

    #@15f
    .line 287
    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    move-object v8, v3

    #@160
    .line 288
    .local v8, "exception":Ljava/lang/Exception;
    const/4 v7, -0x7

    #@161
    goto :goto_7

    #@162
    .line 283
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .end local v8    # "exception":Ljava/lang/Exception;
    :catch_5
    move-exception v2

    #@163
    .line 284
    .restart local v2    # "e":Ljava/io/IOException;
    move-object v8, v2

    #@164
    .line 285
    .restart local v8    # "exception":Ljava/lang/Exception;
    const/4 v7, -0x7

    #@165
    goto :goto_7

    #@166
    .line 280
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "exception":Ljava/lang/Exception;
    :catch_6
    move-exception v5

    #@167
    .line 281
    .local v5, "e":Lorg/apache/http/ParseException;
    move-object v8, v5

    #@168
    .line 282
    .restart local v8    # "exception":Ljava/lang/Exception;
    const/4 v7, -0x7

    #@169
    goto :goto_7

    #@16a
    .line 295
    .end local v5    # "e":Lorg/apache/http/ParseException;
    .end local v8    # "exception":Ljava/lang/Exception;
    :cond_13
    invoke-virtual {v13}, Landroid/net/http/Request;->reset()V

    #@16d
    .line 296
    invoke-virtual {v11, v13}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@170
    goto :goto_8

    #@171
    .line 154
    .end local v6    # "empty":Z
    .end local v12    # "pipeSize":I
    .end local v13    # "req":Landroid/net/http/Request;
    :cond_14
    return-void

    #@172
    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method setCanPersist(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;I)V
    .locals 1
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p3, "connType"    # I

    #@0
    .prologue
    .line 543
    iget-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    #@2
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/http/Connection;->keepAlive(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z

    #@5
    move-result v0

    #@6
    iput-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    #@8
    .line 542
    return-void
.end method

.method setCanPersist(Z)V
    .locals 0
    .param p1, "canPersist"    # Z

    #@0
    .prologue
    .line 547
    iput-boolean p1, p0, Landroid/net/http/Connection;->mCanPersist:Z

    #@2
    .line 546
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 564
    :try_start_0
    iget-object v0, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    #@3
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method
