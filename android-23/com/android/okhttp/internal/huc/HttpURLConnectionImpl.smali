.class public Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnectionImpl.java"


# static fields
.field private static final EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

.field private static final METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final client:Lcom/android/okhttp/OkHttpClient;

.field private fixedContentLength:J

.field private followUpCount:I

.field handshake:Lcom/android/okhttp/Handshake;

.field protected httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

.field protected httpEngineFailure:Ljava/io/IOException;

.field private requestHeaders:Lcom/android/okhttp/Headers$Builder;

.field private responseHeaders:Lcom/android/okhttp/Headers;

.field private route:Lcom/android/okhttp/Route;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 77
    new-instance v0, Ljava/util/LinkedHashSet;

    #@3
    .line 78
    const/16 v1, 0x8

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "OPTIONS"

    #@a
    aput-object v2, v1, v4

    #@c
    const-string/jumbo v2, "GET"

    #@f
    const/4 v3, 0x1

    #@10
    aput-object v2, v1, v3

    #@12
    const-string/jumbo v2, "HEAD"

    #@15
    const/4 v3, 0x2

    #@16
    aput-object v2, v1, v3

    #@18
    const-string/jumbo v2, "POST"

    #@1b
    const/4 v3, 0x3

    #@1c
    aput-object v2, v1, v3

    #@1e
    const-string/jumbo v2, "PUT"

    #@21
    const/4 v3, 0x4

    #@22
    aput-object v2, v1, v3

    #@24
    const-string/jumbo v2, "DELETE"

    #@27
    const/4 v3, 0x5

    #@28
    aput-object v2, v1, v3

    #@2a
    const-string/jumbo v2, "TRACE"

    #@2d
    const/4 v3, 0x6

    #@2e
    aput-object v2, v1, v3

    #@30
    const-string/jumbo v2, "PATCH"

    #@33
    const/4 v3, 0x7

    #@34
    aput-object v2, v1, v3

    #@36
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@39
    move-result-object v1

    #@3a
    .line 77
    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    #@3d
    sput-object v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->METHODS:Ljava/util/Set;

    #@3f
    .line 79
    new-array v0, v4, [B

    #@41
    const/4 v1, 0x0

    #@42
    invoke-static {v1, v0}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;

    #@45
    move-result-object v0

    #@46
    sput-object v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    #@48
    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/android/okhttp/OkHttpClient;

    #@0
    .prologue
    .line 106
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    #@3
    .line 83
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    #@5
    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    #@a
    .line 86
    const-wide/16 v0, -0x1

    #@c
    iput-wide v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    #@e
    .line 107
    iput-object p2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@10
    .line 105
    return-void
.end method

.method private defaultUserAgent()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 367
    const-string/jumbo v1, "http.agent"

    #@3
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 368
    .local v0, "agent":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@9
    .end local v0    # "agent":Ljava/lang/String;
    :goto_0
    return-object v0

    #@a
    .restart local v0    # "agent":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Java"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, "java.version"

    #@19
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    goto :goto_0
.end method

.method private execute(Z)Z
    .locals 8
    .param p1, "readResponse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 433
    :try_start_0
    iget-object v6, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@4
    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/HttpEngine;->sendRequest()V

    #@7
    .line 434
    iget-object v6, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@9
    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/HttpEngine;->getRoute()Lcom/android/okhttp/Route;

    #@c
    move-result-object v6

    #@d
    iput-object v6, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    #@f
    .line 435
    iget-object v6, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@11
    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    #@14
    move-result-object v6

    #@15
    if-eqz v6, :cond_0

    #@17
    .line 436
    iget-object v5, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@19
    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5}, Lcom/android/okhttp/Connection;->getHandshake()Lcom/android/okhttp/Handshake;

    #@20
    move-result-object v5

    #@21
    .line 435
    :cond_0
    iput-object v5, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->handshake:Lcom/android/okhttp/Handshake;

    #@23
    .line 438
    if-eqz p1, :cond_1

    #@25
    .line 439
    iget-object v5, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@27
    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Lcom/android/okhttp/internal/http/RequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 442
    :cond_1
    const/4 v5, 0x1

    #@2b
    return v5

    #@2c
    .line 460
    :catch_0
    move-exception v2

    #@2d
    .line 462
    .local v2, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@2f
    invoke-virtual {v5, v2}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;)Lcom/android/okhttp/internal/http/HttpEngine;

    #@32
    move-result-object v3

    #@33
    .line 463
    .local v3, "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v3, :cond_2

    #@35
    .line 464
    iput-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@37
    .line 465
    return v7

    #@38
    .line 469
    :cond_2
    iput-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    #@3a
    .line 470
    throw v2

    #@3b
    .line 448
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    :catch_1
    move-exception v1

    #@3c
    .line 450
    .local v1, "e":Lcom/android/okhttp/internal/http/RouteException;
    iget-object v5, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@3e
    invoke-virtual {v5, v1}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Lcom/android/okhttp/internal/http/RouteException;)Lcom/android/okhttp/internal/http/HttpEngine;

    #@41
    move-result-object v3

    #@42
    .line 451
    .restart local v3    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v3, :cond_3

    #@44
    .line 452
    iput-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@46
    .line 453
    return v7

    #@47
    .line 457
    :cond_3
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    #@4a
    move-result-object v4

    #@4b
    .line 458
    .local v4, "toThrow":Ljava/io/IOException;
    iput-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    #@4d
    .line 459
    throw v4

    #@4e
    .line 443
    .end local v1    # "e":Lcom/android/okhttp/internal/http/RouteException;
    .end local v3    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    .end local v4    # "toThrow":Ljava/io/IOException;
    :catch_2
    move-exception v0

    #@4f
    .line 445
    .local v0, "e":Lcom/android/okhttp/internal/http/RequestException;
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    #@52
    move-result-object v4

    #@53
    .line 446
    .restart local v4    # "toThrow":Ljava/io/IOException;
    iput-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    #@55
    .line 447
    throw v4
.end method

.method private getHeaders()Lcom/android/okhttp/Headers;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseHeaders:Lcom/android/okhttp/Headers;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 150
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    #@b
    move-result-object v1

    #@c
    .line 151
    .local v1, "response":Lcom/android/okhttp/Response;
    invoke-virtual {v1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@f
    move-result-object v0

    #@10
    .line 153
    .local v0, "headers":Lcom/android/okhttp/Headers;
    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    #@13
    move-result-object v2

    #@14
    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Lcom/android/okhttp/internal/Platform;->getPrefix()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    const-string/jumbo v4, "-Response-Source"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-static {v1}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseSourceHeader(Lcom/android/okhttp/Response;)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    .line 153
    invoke-virtual {v2, v3, v4}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@3b
    move-result-object v2

    #@3c
    iput-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseHeaders:Lcom/android/okhttp/Headers;

    #@3e
    .line 157
    .end local v0    # "headers":Lcom/android/okhttp/Headers;
    .end local v1    # "response":Lcom/android/okhttp/Response;
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseHeaders:Lcom/android/okhttp/Headers;

    #@40
    return-object v2
.end method

.method private getResponse()Lcom/android/okhttp/internal/http/HttpEngine;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 377
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->initHttpEngine()V

    #@3
    .line 379
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@5
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponse()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 380
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@d
    return-object v4

    #@e
    .line 384
    :cond_0
    :goto_0
    const/4 v4, 0x1

    #@f
    invoke-direct {p0, v4}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->execute(Z)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 388
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@17
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    #@1a
    move-result-object v3

    #@1b
    .line 389
    .local v3, "response":Lcom/android/okhttp/Response;
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@1d
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->followUpRequest()Lcom/android/okhttp/Request;

    #@20
    move-result-object v1

    #@21
    .line 391
    .local v1, "followUp":Lcom/android/okhttp/Request;
    if-nez v1, :cond_1

    #@23
    .line 392
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@25
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseConnection()V

    #@28
    .line 393
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@2a
    return-object v4

    #@2b
    .line 396
    :cond_1
    iget v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->followUpCount:I

    #@2d
    add-int/lit8 v4, v4, 0x1

    #@2f
    iput v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->followUpCount:I

    #@31
    const/16 v5, 0x14

    #@33
    if-le v4, v5, :cond_2

    #@35
    .line 397
    new-instance v4, Ljava/net/ProtocolException;

    #@37
    new-instance v5, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v6, "Too many follow-up requests: "

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    iget v6, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->followUpCount:I

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@50
    throw v4

    #@51
    .line 401
    :cond_2
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@54
    move-result-object v4

    #@55
    iput-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->url:Ljava/net/URL;

    #@57
    .line 402
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    #@5e
    move-result-object v4

    #@5f
    iput-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    #@61
    .line 407
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@63
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequestBody()Lcom/android/okhttp/okio/Sink;

    #@66
    move-result-object v2

    #@67
    .line 408
    .local v2, "requestBody":Lcom/android/okhttp/okio/Sink;
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@6a
    move-result-object v4

    #@6b
    iget-object v5, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v4

    #@71
    if-nez v4, :cond_3

    #@73
    .line 409
    const/4 v2, 0x0

    #@74
    .line 412
    .end local v2    # "requestBody":Lcom/android/okhttp/okio/Sink;
    :cond_3
    if-eqz v2, :cond_4

    #@76
    instance-of v4, v2, Lcom/android/okhttp/internal/http/RetryableSink;

    #@78
    if-eqz v4, :cond_6

    #@7a
    .line 416
    :cond_4
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@7c
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@7f
    move-result-object v5

    #@80
    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/HttpEngine;->sameConnection(Ljava/net/URL;)Z

    #@83
    move-result v4

    #@84
    if-nez v4, :cond_5

    #@86
    .line 417
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@88
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseConnection()V

    #@8b
    .line 420
    :cond_5
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@8d
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/Connection;

    #@90
    move-result-object v0

    #@91
    .line 421
    .local v0, "connection":Lcom/android/okhttp/Connection;
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@94
    move-result-object v4

    #@95
    check-cast v2, Lcom/android/okhttp/internal/http/RetryableSink;

    #@97
    invoke-direct {p0, v4, v0, v2, v3}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/HttpEngine;

    #@9a
    move-result-object v4

    #@9b
    iput-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@9d
    goto/16 :goto_0

    #@9f
    .line 413
    .end local v0    # "connection":Lcom/android/okhttp/Connection;
    :cond_6
    new-instance v4, Ljava/net/HttpRetryException;

    #@a1
    const-string/jumbo v5, "Cannot retry streamed HTTP body"

    #@a4
    iget v6, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseCode:I

    #@a6
    invoke-direct {v4, v5, v6}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    #@a9
    throw v4
.end method

.method private initHttpEngine()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 296
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    #@6
    throw v1

    #@7
    .line 297
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 298
    return-void

    #@c
    .line 301
    :cond_1
    const/4 v1, 0x1

    #@d
    iput-boolean v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    #@f
    .line 303
    :try_start_0
    iget-boolean v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->doOutput:Z

    #@11
    if-eqz v1, :cond_2

    #@13
    .line 304
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    #@15
    const-string/jumbo v2, "GET"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_3

    #@1e
    .line 306
    const-string/jumbo v1, "POST"

    #@21
    iput-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    #@23
    .line 312
    :cond_2
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    #@25
    const/4 v2, 0x0

    #@26
    const/4 v3, 0x0

    #@27
    const/4 v4, 0x0

    #@28
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/HttpEngine;

    #@2b
    move-result-object v1

    #@2c
    iput-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@2e
    .line 294
    return-void

    #@2f
    .line 307
    :cond_3
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    #@31
    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    #@34
    move-result v1

    #@35
    if-nez v1, :cond_2

    #@37
    .line 308
    new-instance v1, Ljava/net/ProtocolException;

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    const-string/jumbo v3, " does not support writing"

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@52
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@53
    .line 313
    :catch_0
    move-exception v0

    #@54
    .line 314
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    #@56
    .line 315
    throw v0
.end method

.method private newHttpEngine(Ljava/lang/String;Lcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/HttpEngine;
    .locals 17
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "connection"    # Lcom/android/okhttp/Connection;
    .param p3, "requestBody"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .param p4, "priorResponse"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 322
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 323
    sget-object v15, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    #@8
    .line 325
    :goto_0
    new-instance v2, Lcom/android/okhttp/Request$Builder;

    #@a
    invoke-direct {v2}, Lcom/android/okhttp/Request$Builder;-><init>()V

    #@d
    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    #@10
    move-result-object v6

    #@11
    .line 325
    invoke-virtual {v2, v6}, Lcom/android/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/android/okhttp/Request$Builder;

    #@14
    move-result-object v2

    #@15
    move-object/from16 v0, p1

    #@17
    invoke-virtual {v2, v0, v15}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    #@1a
    move-result-object v12

    #@1b
    .line 328
    .local v12, "builder":Lcom/android/okhttp/Request$Builder;
    move-object/from16 v0, p0

    #@1d
    iget-object v2, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    #@1f
    invoke-virtual {v2}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@22
    move-result-object v13

    #@23
    .line 329
    .local v13, "headers":Lcom/android/okhttp/Headers;
    const/4 v14, 0x0

    #@24
    .local v14, "i":I
    invoke-virtual {v13}, Lcom/android/okhttp/Headers;->size()I

    #@27
    move-result v16

    #@28
    .local v16, "size":I
    :goto_1
    move/from16 v0, v16

    #@2a
    if-ge v14, v0, :cond_1

    #@2c
    .line 330
    invoke-virtual {v13, v14}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v13, v14}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v12, v2, v6}, Lcom/android/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@37
    .line 329
    add-int/lit8 v14, v14, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 324
    .end local v12    # "builder":Lcom/android/okhttp/Request$Builder;
    .end local v13    # "headers":Lcom/android/okhttp/Headers;
    .end local v14    # "i":I
    .end local v16    # "size":I
    :cond_0
    const/4 v15, 0x0

    #@3b
    .local v15, "placeholderBody":Lcom/android/okhttp/RequestBody;
    goto :goto_0

    #@3c
    .line 333
    .end local v15    # "placeholderBody":Lcom/android/okhttp/RequestBody;
    .restart local v12    # "builder":Lcom/android/okhttp/Request$Builder;
    .restart local v13    # "headers":Lcom/android/okhttp/Headers;
    .restart local v14    # "i":I
    .restart local v16    # "size":I
    :cond_1
    const/4 v5, 0x0

    #@3d
    .line 334
    .local v5, "bufferRequestBody":Z
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_2

    #@43
    .line 336
    move-object/from16 v0, p0

    #@45
    iget-wide v6, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    #@47
    const-wide/16 v8, -0x1

    #@49
    cmp-long v2, v6, v8

    #@4b
    if-eqz v2, :cond_5

    #@4d
    .line 337
    const-string/jumbo v2, "Content-Length"

    #@50
    move-object/from16 v0, p0

    #@52
    iget-wide v6, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    #@54
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {v12, v2, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@5b
    .line 345
    :goto_2
    const-string/jumbo v2, "Content-Type"

    #@5e
    invoke-virtual {v13, v2}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    if-nez v2, :cond_2

    #@64
    .line 346
    const-string/jumbo v2, "Content-Type"

    #@67
    const-string/jumbo v6, "application/x-www-form-urlencoded"

    #@6a
    invoke-virtual {v12, v2, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@6d
    .line 350
    :cond_2
    const-string/jumbo v2, "User-Agent"

    #@70
    invoke-virtual {v13, v2}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    #@73
    move-result-object v2

    #@74
    if-nez v2, :cond_3

    #@76
    .line 351
    const-string/jumbo v2, "User-Agent"

    #@79
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->defaultUserAgent()Ljava/lang/String;

    #@7c
    move-result-object v6

    #@7d
    invoke-virtual {v12, v2, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@80
    .line 354
    :cond_3
    invoke-virtual {v12}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    #@83
    move-result-object v4

    #@84
    .line 357
    .local v4, "request":Lcom/android/okhttp/Request;
    move-object/from16 v0, p0

    #@86
    iget-object v3, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@88
    .line 358
    .local v3, "engineClient":Lcom/android/okhttp/OkHttpClient;
    sget-object v2, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@8a
    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    #@8d
    move-result-object v2

    #@8e
    if-eqz v2, :cond_4

    #@90
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getUseCaches()Z

    #@93
    move-result v2

    #@94
    if-eqz v2, :cond_7

    #@96
    .line 362
    :cond_4
    :goto_3
    new-instance v2, Lcom/android/okhttp/internal/http/HttpEngine;

    #@98
    const/4 v6, 0x1

    #@99
    const/4 v7, 0x0

    #@9a
    const/4 v9, 0x0

    #@9b
    move-object/from16 v8, p2

    #@9d
    move-object/from16 v10, p3

    #@9f
    move-object/from16 v11, p4

    #@a1
    invoke-direct/range {v2 .. v11}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RouteSelector;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    #@a4
    return-object v2

    #@a5
    .line 338
    .end local v3    # "engineClient":Lcom/android/okhttp/OkHttpClient;
    .end local v4    # "request":Lcom/android/okhttp/Request;
    :cond_5
    move-object/from16 v0, p0

    #@a7
    iget v2, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->chunkLength:I

    #@a9
    if-lez v2, :cond_6

    #@ab
    .line 339
    const-string/jumbo v2, "Transfer-Encoding"

    #@ae
    const-string/jumbo v6, "chunked"

    #@b1
    invoke-virtual {v12, v2, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@b4
    goto :goto_2

    #@b5
    .line 341
    :cond_6
    const/4 v5, 0x1

    #@b6
    goto :goto_2

    #@b7
    .line 359
    .restart local v3    # "engineClient":Lcom/android/okhttp/OkHttpClient;
    .restart local v4    # "request":Lcom/android/okhttp/Request;
    :cond_7
    move-object/from16 v0, p0

    #@b9
    iget-object v2, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@bb
    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->clone()Lcom/android/okhttp/OkHttpClient;

    #@be
    move-result-object v2

    #@bf
    const/4 v6, 0x0

    #@c0
    invoke-virtual {v2, v6}, Lcom/android/okhttp/OkHttpClient;->setCache(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/OkHttpClient;

    #@c3
    move-result-object v3

    #@c4
    goto :goto_3
.end method

.method private static responseSourceHeader(Lcom/android/okhttp/Response;)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->networkResponse()Lcom/android/okhttp/Response;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 162
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheResponse()Lcom/android/okhttp/Response;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 163
    const-string/jumbo v0, "NONE"

    #@f
    return-object v0

    #@10
    .line 165
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v1, "CACHE "

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    return-object v0

    #@29
    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheResponse()Lcom/android/okhttp/Response;

    #@2c
    move-result-object v0

    #@2d
    if-nez v0, :cond_2

    #@2f
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v1, "NETWORK "

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    #@3e
    move-result v1

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    return-object v0

    #@48
    .line 170
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v1, "CONDITIONAL_CACHE "

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->networkResponse()Lcom/android/okhttp/Response;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1}, Lcom/android/okhttp/Response;->code()I

    #@5b
    move-result v1

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    return-object v0
.end method

.method private setProtocols(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "protocolsString"    # Ljava/lang/String;
    .param p2, "append"    # Z

    #@0
    .prologue
    .line 566
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 567
    .local v2, "protocolsList":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    if-eqz p2, :cond_0

    #@7
    .line 568
    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@9
    invoke-virtual {v3}, Lcom/android/okhttp/OkHttpClient;->getProtocols()Ljava/util/List;

    #@c
    move-result-object v3

    #@d
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@10
    .line 570
    :cond_0
    const-string/jumbo v3, ","

    #@13
    const/4 v4, -0x1

    #@14
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    const/4 v3, 0x0

    #@19
    array-length v5, v4

    #@1a
    :goto_0
    if-ge v3, v5, :cond_1

    #@1c
    aget-object v1, v4, v3

    #@1e
    .line 572
    .local v1, "protocol":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/android/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/android/okhttp/Protocol;

    #@21
    move-result-object v6

    #@22
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 570
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_0

    #@28
    .line 573
    :catch_0
    move-exception v0

    #@29
    .line 574
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    #@2b
    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@2e
    throw v3

    #@2f
    .line 577
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "protocol":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@31
    invoke-virtual {v3, v2}, Lcom/android/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    #@34
    .line 565
    return-void
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 536
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Cannot add request property after connection is made"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 538
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 539
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v1, "field == null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 541
    :cond_1
    if-nez p2, :cond_2

    #@1a
    .line 547
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    #@1d
    move-result-object v0

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Ignoring header "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, " because its value was null."

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    #@3c
    .line 548
    return-void

    #@3d
    .line 552
    :cond_2
    const-string/jumbo v0, "X-Android-Transports"

    #@40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v0

    #@44
    if-nez v0, :cond_3

    #@46
    const-string/jumbo v0, "X-Android-Protocols"

    #@49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_4

    #@4f
    .line 553
    :cond_3
    const/4 v0, 0x1

    #@50
    invoke-direct {p0, p2, v0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setProtocols(Ljava/lang/String;Z)V

    #@53
    .line 534
    :goto_0
    return-void

    #@54
    .line 555
    :cond_4
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    #@56
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@59
    goto :goto_0
.end method

.method public final connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->initHttpEngine()V

    #@3
    .line 114
    :cond_0
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->execute(Z)Z

    #@7
    move-result v0

    #@8
    .line 115
    .local v0, "success":Z
    if-eqz v0, :cond_0

    #@a
    .line 110
    return-void
.end method

.method public final disconnect()V
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@7
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->disconnect()V

    #@a
    .line 118
    return-void
.end method

.method public getConnectTimeout()I
    .locals 1

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getConnectTimeout()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    #@4
    move-result-object v1

    #@5
    .line 138
    .local v1, "response":Lcom/android/okhttp/internal/http/HttpEngine;
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    #@8
    move-result-object v2

    #@9
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->hasBody(Lcom/android/okhttp/Response;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 139
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Lcom/android/okhttp/Response;->code()I

    #@16
    move-result v2

    #@17
    const/16 v3, 0x190

    #@19
    if-lt v2, v3, :cond_0

    #@1b
    .line 140
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result-object v2

    #@27
    return-object v2

    #@28
    .line 142
    :cond_0
    return-object v4

    #@29
    .line 143
    .end local v1    # "response":Lcom/android/okhttp/internal/http/HttpEngine;
    :catch_0
    move-exception v0

    #@2a
    .line 144
    .local v0, "e":Ljava/io/IOException;
    return-object v4
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 179
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/android/okhttp/Headers;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 180
    :catch_0
    move-exception v0

    #@a
    .line 181
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 192
    if-nez p1, :cond_0

    #@3
    .line 193
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 192
    :goto_0
    return-object v1

    #@14
    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/android/okhttp/Headers;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result-object v1

    #@1c
    goto :goto_0

    #@1d
    .line 195
    :catch_0
    move-exception v0

    #@1e
    .line 196
    .local v0, "e":Ljava/io/IOException;
    return-object v2
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 202
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/android/okhttp/Headers;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 203
    :catch_0
    move-exception v0

    #@a
    .line 204
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 210
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/android/okhttp/Headers;

    #@3
    move-result-object v1

    #@4
    .line 211
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    #@b
    move-result-object v2

    #@c
    invoke-static {v2}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 210
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 212
    :catch_0
    move-exception v0

    #@1a
    .line 213
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    iget-boolean v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->doInput:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 228
    new-instance v1, Ljava/net/ProtocolException;

    #@6
    const-string/jumbo v2, "This protocol does not support input"

    #@9
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    #@10
    move-result-object v0

    #@11
    .line 237
    .local v0, "response":Lcom/android/okhttp/internal/http/HttpEngine;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponseCode()I

    #@14
    move-result v1

    #@15
    const/16 v2, 0x190

    #@17
    if-lt v1, v2, :cond_1

    #@19
    .line 238
    new-instance v1, Ljava/io/FileNotFoundException;

    #@1b
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->url:Ljava/net/URL;

    #@1d
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 241
    :cond_1
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    #@30
    move-result-object v1

    #@31
    return-object v1
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connect()V

    #@3
    .line 247
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@5
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getBufferedRequestBody()Lcom/android/okhttp/okio/BufferedSink;

    #@8
    move-result-object v0

    #@9
    .line 248
    .local v0, "sink":Lcom/android/okhttp/okio/BufferedSink;
    if-nez v0, :cond_0

    #@b
    .line 249
    new-instance v1, Ljava/net/ProtocolException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "method does not support a request body: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@29
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponse()Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_1

    #@2f
    .line 251
    new-instance v1, Ljava/net/ProtocolException;

    #@31
    const-string/jumbo v2, "cannot write request body after response has been read"

    #@34
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1

    #@38
    .line 254
    :cond_1
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    #@3b
    move-result-object v1

    #@3c
    return-object v1
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 259
    .local v0, "hostName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    #@b
    move-result-object v3

    #@c
    invoke-static {v3}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    #@f
    move-result v1

    #@10
    .line 260
    .local v1, "hostPort":I
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->usingProxy()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 261
    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@18
    invoke-virtual {v3}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Ljava/net/InetSocketAddress;

    #@22
    .line 262
    .local v2, "proxyAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 263
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@29
    move-result v1

    #@2a
    .line 265
    .end local v2    # "proxyAddress":Ljava/net/InetSocketAddress;
    :cond_0
    new-instance v3, Ljava/net/SocketPermission;

    #@2c
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    const-string/jumbo v5, ":"

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    const-string/jumbo v5, "connect, resolve"

    #@47
    invoke-direct {v3, v4, v5}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    return-object v3
.end method

.method public getReadTimeout()I
    .locals 1

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 220
    const-string/jumbo v1, "Cannot access request header fields after connection is set"

    #@9
    .line 219
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    #@f
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@12
    move-result-object v0

    #@13
    const/4 v1, 0x0

    #@14
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 269
    if-nez p1, :cond_0

    #@3
    return-object v0

    #@4
    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 497
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->code()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 493
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->message()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 4
    .param p1, "timeoutMillis"    # I

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@2
    int-to-long v2, p1

    #@3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@5
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    #@8
    .line 273
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 2
    .param p1, "contentLength"    # I

    #@0
    .prologue
    .line 588
    int-to-long v0, p1

    #@1
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setFixedLengthStreamingMode(J)V

    #@4
    .line 587
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 3
    .param p1, "contentLength"    # J

    #@0
    .prologue
    .line 592
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 593
    :cond_0
    iget v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->chunkLength:I

    #@f
    if-lez v0, :cond_1

    #@11
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "Already in chunked mode"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 594
    :cond_1
    const-wide/16 v0, 0x0

    #@1c
    cmp-long v0, p1, v0

    #@1e
    if-gez v0, :cond_2

    #@20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v1, "contentLength < 0"

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 595
    :cond_2
    iput-wide p1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    #@2b
    .line 596
    const-wide/32 v0, 0x7fffffff

    #@2e
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@31
    move-result-wide v0

    #@32
    long-to-int v0, v0

    #@33
    iput v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    #@35
    .line 591
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 7
    .param p1, "newValue"    # J

    #@0
    .prologue
    .line 526
    invoke-super {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    #@3
    .line 527
    iget-wide v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->ifModifiedSince:J

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 528
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    #@d
    const-string/jumbo v1, "If-Modified-Since"

    #@10
    new-instance v2, Ljava/util/Date;

    #@12
    iget-wide v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->ifModifiedSince:J

    #@14
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@17
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@1e
    .line 525
    :goto_0
    return-void

    #@1f
    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    #@21
    const-string/jumbo v1, "If-Modified-Since"

    #@24
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@27
    goto :goto_0
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1
    .param p1, "followRedirects"    # Z

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkHttpClient;->setFollowRedirects(Z)V

    #@5
    .line 278
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 4
    .param p1, "timeoutMillis"    # I

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@2
    int-to-long v2, p1

    #@3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@5
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    #@8
    .line 286
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 581
    sget-object v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->METHODS:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 582
    new-instance v0, Ljava/net/ProtocolException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Expected one of "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    sget-object v2, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->METHODS:Ljava/util/Set;

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, " but was "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 584
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    #@31
    .line 580
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 502
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Cannot set request property after connection is made"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 504
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 505
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v1, "field == null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 507
    :cond_1
    if-nez p2, :cond_2

    #@1a
    .line 513
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    #@1d
    move-result-object v0

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Ignoring header "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, " because its value was null."

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    #@3c
    .line 514
    return-void

    #@3d
    .line 518
    :cond_2
    const-string/jumbo v0, "X-Android-Transports"

    #@40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v0

    #@44
    if-nez v0, :cond_3

    #@46
    const-string/jumbo v0, "X-Android-Protocols"

    #@49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_4

    #@4f
    .line 519
    :cond_3
    const/4 v0, 0x0

    #@50
    invoke-direct {p0, p2, v0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setProtocols(Ljava/lang/String;Z)V

    #@53
    .line 500
    :goto_0
    return-void

    #@54
    .line 521
    :cond_4
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    #@56
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@59
    goto :goto_0
.end method

.method public final usingProxy()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 486
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 487
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    #@7
    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    #@a
    move-result-object v0

    #@b
    .line 489
    .local v0, "proxy":Ljava/net/Proxy;
    :goto_0
    if-eqz v0, :cond_0

    #@d
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@10
    move-result-object v2

    #@11
    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@13
    if-eq v2, v3, :cond_0

    #@15
    const/4 v1, 0x1

    #@16
    :cond_0
    return v1

    #@17
    .line 488
    .end local v0    # "proxy":Ljava/net/Proxy;
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@19
    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    #@1c
    move-result-object v0

    #@1d
    .restart local v0    # "proxy":Ljava/net/Proxy;
    goto :goto_0
.end method
