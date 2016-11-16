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

.field private urlFilter:Lcom/android/okhttp/internal/URLFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 82
    new-instance v0, Ljava/util/LinkedHashSet;

    #@3
    .line 83
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
    .line 82
    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    #@3d
    sput-object v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->METHODS:Ljava/util/Set;

    #@3f
    .line 84
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
    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/android/okhttp/OkHttpClient;

    #@0
    .prologue
    .line 113
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    #@3
    .line 88
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    #@5
    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    #@a
    .line 91
    const-wide/16 v0, -0x1

    #@c
    iput-wide v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    #@e
    .line 114
    iput-object p2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@10
    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/URLFilter;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p3, "urlFilter"    # Lcom/android/okhttp/internal/URLFilter;

    #@0
    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V

    #@3
    .line 119
    iput-object p3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->urlFilter:Lcom/android/okhttp/internal/URLFilter;

    #@5
    .line 117
    return-void
.end method

.method private defaultUserAgent()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 388
    const-string/jumbo v1, "http.agent"

    #@3
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 389
    .local v0, "agent":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@9
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    :goto_0
    return-object v1

    #@e
    :cond_0
    invoke-static {}, Lcom/android/okhttp/internal/Version;->userAgent()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    goto :goto_0
.end method

.method private execute(Z)Z
    .locals 9
    .param p1, "readResponse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 453
    iget-object v6, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->urlFilter:Lcom/android/okhttp/internal/URLFilter;

    #@4
    if-eqz v6, :cond_0

    #@6
    .line 454
    iget-object v6, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->urlFilter:Lcom/android/okhttp/internal/URLFilter;

    #@8
    iget-object v7, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@a
    invoke-virtual {v7}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    #@d
    move-result-object v7

    #@e
    invoke-virtual {v7}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@11
    move-result-object v7

    #@12
    invoke-interface {v6, v7}, Lcom/android/okhttp/internal/URLFilter;->checkURLPermitted(Ljava/net/URL;)V

    #@15
    .line 457
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@17
    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/HttpEngine;->sendRequest()V

    #@1a
    .line 458
    iget-object v6, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@1c
    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/HttpEngine;->getRoute()Lcom/android/okhttp/Route;

    #@1f
    move-result-object v6

    #@20
    iput-object v6, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    #@22
    .line 459
    iget-object v6, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@24
    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    #@27
    move-result-object v6

    #@28
    if-eqz v6, :cond_1

    #@2a
    .line 460
    iget-object v5, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@2c
    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5}, Lcom/android/okhttp/Connection;->getHandshake()Lcom/android/okhttp/Handshake;

    #@33
    move-result-object v5

    #@34
    .line 459
    :cond_1
    iput-object v5, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->handshake:Lcom/android/okhttp/Handshake;

    #@36
    .line 462
    if-eqz p1, :cond_2

    #@38
    .line 463
    iget-object v5, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@3a
    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Lcom/android/okhttp/internal/http/RequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 466
    :cond_2
    const/4 v5, 0x1

    #@3e
    return v5

    #@3f
    .line 484
    :catch_0
    move-exception v2

    #@40
    .line 486
    .local v2, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@42
    invoke-virtual {v5, v2}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;)Lcom/android/okhttp/internal/http/HttpEngine;

    #@45
    move-result-object v3

    #@46
    .line 487
    .local v3, "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v3, :cond_3

    #@48
    .line 488
    iput-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@4a
    .line 489
    return v8

    #@4b
    .line 493
    :cond_3
    iput-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    #@4d
    .line 494
    throw v2

    #@4e
    .line 472
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    :catch_1
    move-exception v1

    #@4f
    .line 474
    .local v1, "e":Lcom/android/okhttp/internal/http/RouteException;
    iget-object v5, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@51
    invoke-virtual {v5, v1}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Lcom/android/okhttp/internal/http/RouteException;)Lcom/android/okhttp/internal/http/HttpEngine;

    #@54
    move-result-object v3

    #@55
    .line 475
    .restart local v3    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v3, :cond_4

    #@57
    .line 476
    iput-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@59
    .line 477
    return v8

    #@5a
    .line 481
    :cond_4
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    #@5d
    move-result-object v4

    #@5e
    .line 482
    .local v4, "toThrow":Ljava/io/IOException;
    iput-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    #@60
    .line 483
    throw v4

    #@61
    .line 467
    .end local v1    # "e":Lcom/android/okhttp/internal/http/RouteException;
    .end local v3    # "retryEngine":Lcom/android/okhttp/internal/http/HttpEngine;
    .end local v4    # "toThrow":Ljava/io/IOException;
    :catch_2
    move-exception v0

    #@62
    .line 469
    .local v0, "e":Lcom/android/okhttp/internal/http/RequestException;
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    #@65
    move-result-object v4

    #@66
    .line 470
    .restart local v4    # "toThrow":Ljava/io/IOException;
    iput-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    #@68
    .line 471
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
    .line 161
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseHeaders:Lcom/android/okhttp/Headers;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 162
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    #@b
    move-result-object v1

    #@c
    .line 163
    .local v1, "response":Lcom/android/okhttp/Response;
    invoke-virtual {v1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@f
    move-result-object v0

    #@10
    .line 165
    .local v0, "headers":Lcom/android/okhttp/Headers;
    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    #@13
    move-result-object v2

    #@14
    .line 166
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
    .line 165
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
    .line 169
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
    .line 398
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->initHttpEngine()V

    #@3
    .line 400
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@5
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponse()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 401
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@d
    return-object v4

    #@e
    .line 405
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
    .line 409
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@17
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    #@1a
    move-result-object v3

    #@1b
    .line 410
    .local v3, "response":Lcom/android/okhttp/Response;
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@1d
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->followUpRequest()Lcom/android/okhttp/Request;

    #@20
    move-result-object v1

    #@21
    .line 412
    .local v1, "followUp":Lcom/android/okhttp/Request;
    if-nez v1, :cond_1

    #@23
    .line 413
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@25
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseConnection()V

    #@28
    .line 414
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@2a
    return-object v4

    #@2b
    .line 417
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
    .line 418
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
    .line 422
    :cond_2
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@54
    move-result-object v4

    #@55
    iput-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->url:Ljava/net/URL;

    #@57
    .line 423
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
    .line 428
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@63
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequestBody()Lcom/android/okhttp/okio/Sink;

    #@66
    move-result-object v2

    #@67
    .line 429
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
    .line 430
    const/4 v2, 0x0

    #@74
    .line 433
    .end local v2    # "requestBody":Lcom/android/okhttp/okio/Sink;
    :cond_3
    if-eqz v2, :cond_4

    #@76
    instance-of v4, v2, Lcom/android/okhttp/internal/http/RetryableSink;

    #@78
    if-eqz v4, :cond_6

    #@7a
    .line 437
    :cond_4
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@7c
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    #@7f
    move-result-object v5

    #@80
    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/HttpEngine;->sameConnection(Lcom/android/okhttp/HttpUrl;)Z

    #@83
    move-result v4

    #@84
    if-nez v4, :cond_5

    #@86
    .line 438
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@88
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseConnection()V

    #@8b
    .line 441
    :cond_5
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@8d
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/Connection;

    #@90
    move-result-object v0

    #@91
    .line 442
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
    .line 434
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
    .line 314
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 315
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    #@6
    throw v1

    #@7
    .line 316
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 317
    return-void

    #@c
    .line 320
    :cond_1
    const/4 v1, 0x1

    #@d
    iput-boolean v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    #@f
    .line 322
    :try_start_0
    iget-boolean v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->doOutput:Z

    #@11
    if-eqz v1, :cond_2

    #@13
    .line 323
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
    .line 325
    const-string/jumbo v1, "POST"

    #@21
    iput-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    #@23
    .line 331
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
    .line 313
    return-void

    #@2f
    .line 326
    :cond_3
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    #@31
    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    #@34
    move-result v1

    #@35
    if-nez v1, :cond_2

    #@37
    .line 327
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
    .line 332
    :catch_0
    move-exception v0

    #@54
    .line 333
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    #@56
    .line 334
    throw v0
.end method

.method private newHttpEngine(Ljava/lang/String;Lcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/HttpEngine;
    .locals 19
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "connection"    # Lcom/android/okhttp/Connection;
    .param p3, "requestBody"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .param p4, "priorResponse"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 341
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 342
    sget-object v16, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    #@8
    .line 344
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    #@b
    move-result-object v18

    #@c
    .line 345
    .local v18, "url":Ljava/net/URL;
    sget-object v2, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@e
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/Internal;->getHttpUrlChecked(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    #@15
    move-result-object v14

    #@16
    .line 346
    .local v14, "httpUrl":Lcom/android/okhttp/HttpUrl;
    new-instance v2, Lcom/android/okhttp/Request$Builder;

    #@18
    invoke-direct {v2}, Lcom/android/okhttp/Request$Builder;-><init>()V

    #@1b
    invoke-virtual {v2, v14}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    #@1e
    move-result-object v2

    #@1f
    move-object/from16 v0, p1

    #@21
    move-object/from16 v1, v16

    #@23
    invoke-virtual {v2, v0, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    #@26
    move-result-object v12

    #@27
    .line 349
    .local v12, "builder":Lcom/android/okhttp/Request$Builder;
    move-object/from16 v0, p0

    #@29
    iget-object v2, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    #@2b
    invoke-virtual {v2}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@2e
    move-result-object v13

    #@2f
    .line 350
    .local v13, "headers":Lcom/android/okhttp/Headers;
    const/4 v15, 0x0

    #@30
    .local v15, "i":I
    invoke-virtual {v13}, Lcom/android/okhttp/Headers;->size()I

    #@33
    move-result v17

    #@34
    .local v17, "size":I
    :goto_1
    move/from16 v0, v17

    #@36
    if-ge v15, v0, :cond_1

    #@38
    .line 351
    invoke-virtual {v13, v15}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v13, v15}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v12, v2, v6}, Lcom/android/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@43
    .line 350
    add-int/lit8 v15, v15, 0x1

    #@45
    goto :goto_1

    #@46
    .line 343
    .end local v12    # "builder":Lcom/android/okhttp/Request$Builder;
    .end local v13    # "headers":Lcom/android/okhttp/Headers;
    .end local v14    # "httpUrl":Lcom/android/okhttp/HttpUrl;
    .end local v15    # "i":I
    .end local v17    # "size":I
    .end local v18    # "url":Ljava/net/URL;
    :cond_0
    const/16 v16, 0x0

    #@48
    .local v16, "placeholderBody":Lcom/android/okhttp/RequestBody;
    goto :goto_0

    #@49
    .line 354
    .end local v16    # "placeholderBody":Lcom/android/okhttp/RequestBody;
    .restart local v12    # "builder":Lcom/android/okhttp/Request$Builder;
    .restart local v13    # "headers":Lcom/android/okhttp/Headers;
    .restart local v14    # "httpUrl":Lcom/android/okhttp/HttpUrl;
    .restart local v15    # "i":I
    .restart local v17    # "size":I
    .restart local v18    # "url":Ljava/net/URL;
    :cond_1
    const/4 v5, 0x0

    #@4a
    .line 355
    .local v5, "bufferRequestBody":Z
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    #@4d
    move-result v2

    #@4e
    if-eqz v2, :cond_2

    #@50
    .line 357
    move-object/from16 v0, p0

    #@52
    iget-wide v6, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    #@54
    const-wide/16 v8, -0x1

    #@56
    cmp-long v2, v6, v8

    #@58
    if-eqz v2, :cond_5

    #@5a
    .line 358
    const-string/jumbo v2, "Content-Length"

    #@5d
    move-object/from16 v0, p0

    #@5f
    iget-wide v6, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    #@61
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v12, v2, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@68
    .line 366
    :goto_2
    const-string/jumbo v2, "Content-Type"

    #@6b
    invoke-virtual {v13, v2}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    if-nez v2, :cond_2

    #@71
    .line 367
    const-string/jumbo v2, "Content-Type"

    #@74
    const-string/jumbo v6, "application/x-www-form-urlencoded"

    #@77
    invoke-virtual {v12, v2, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@7a
    .line 371
    :cond_2
    const-string/jumbo v2, "User-Agent"

    #@7d
    invoke-virtual {v13, v2}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    #@80
    move-result-object v2

    #@81
    if-nez v2, :cond_3

    #@83
    .line 372
    const-string/jumbo v2, "User-Agent"

    #@86
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->defaultUserAgent()Ljava/lang/String;

    #@89
    move-result-object v6

    #@8a
    invoke-virtual {v12, v2, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@8d
    .line 375
    :cond_3
    invoke-virtual {v12}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    #@90
    move-result-object v4

    #@91
    .line 378
    .local v4, "request":Lcom/android/okhttp/Request;
    move-object/from16 v0, p0

    #@93
    iget-object v3, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@95
    .line 379
    .local v3, "engineClient":Lcom/android/okhttp/OkHttpClient;
    sget-object v2, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@97
    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    #@9a
    move-result-object v2

    #@9b
    if-eqz v2, :cond_4

    #@9d
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getUseCaches()Z

    #@a0
    move-result v2

    #@a1
    if-eqz v2, :cond_7

    #@a3
    .line 383
    :cond_4
    :goto_3
    new-instance v2, Lcom/android/okhttp/internal/http/HttpEngine;

    #@a5
    const/4 v6, 0x1

    #@a6
    const/4 v7, 0x0

    #@a7
    const/4 v9, 0x0

    #@a8
    move-object/from16 v8, p2

    #@aa
    move-object/from16 v10, p3

    #@ac
    move-object/from16 v11, p4

    #@ae
    invoke-direct/range {v2 .. v11}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RouteSelector;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    #@b1
    return-object v2

    #@b2
    .line 359
    .end local v3    # "engineClient":Lcom/android/okhttp/OkHttpClient;
    .end local v4    # "request":Lcom/android/okhttp/Request;
    :cond_5
    move-object/from16 v0, p0

    #@b4
    iget v2, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->chunkLength:I

    #@b6
    if-lez v2, :cond_6

    #@b8
    .line 360
    const-string/jumbo v2, "Transfer-Encoding"

    #@bb
    const-string/jumbo v6, "chunked"

    #@be
    invoke-virtual {v12, v2, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@c1
    goto :goto_2

    #@c2
    .line 362
    :cond_6
    const/4 v5, 0x1

    #@c3
    goto :goto_2

    #@c4
    .line 380
    .restart local v3    # "engineClient":Lcom/android/okhttp/OkHttpClient;
    .restart local v4    # "request":Lcom/android/okhttp/Request;
    :cond_7
    move-object/from16 v0, p0

    #@c6
    iget-object v2, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@c8
    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->clone()Lcom/android/okhttp/OkHttpClient;

    #@cb
    move-result-object v2

    #@cc
    const/4 v6, 0x0

    #@cd
    invoke-virtual {v2, v6}, Lcom/android/okhttp/OkHttpClient;->setCache(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/OkHttpClient;

    #@d0
    move-result-object v3

    #@d1
    goto :goto_3
.end method

.method private static responseSourceHeader(Lcom/android/okhttp/Response;)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->networkResponse()Lcom/android/okhttp/Response;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 174
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheResponse()Lcom/android/okhttp/Response;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 175
    const-string/jumbo v0, "NONE"

    #@f
    return-object v0

    #@10
    .line 177
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
    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheResponse()Lcom/android/okhttp/Response;

    #@2c
    move-result-object v0

    #@2d
    if-nez v0, :cond_2

    #@2f
    .line 180
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
    .line 182
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
    .line 590
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 591
    .local v2, "protocolsList":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    if-eqz p2, :cond_0

    #@7
    .line 592
    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@9
    invoke-virtual {v3}, Lcom/android/okhttp/OkHttpClient;->getProtocols()Ljava/util/List;

    #@c
    move-result-object v3

    #@d
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@10
    .line 594
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
    .line 596
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
    .line 594
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_0

    #@28
    .line 597
    :catch_0
    move-exception v0

    #@29
    .line 598
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    #@2b
    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@2e
    throw v3

    #@2f
    .line 601
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "protocol":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@31
    invoke-virtual {v3, v2}, Lcom/android/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    #@34
    .line 589
    return-void
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 560
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Cannot add request property after connection is made"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 562
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 563
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v1, "field == null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 565
    :cond_1
    if-nez p2, :cond_2

    #@1a
    .line 571
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
    .line 572
    return-void

    #@3d
    .line 576
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
    .line 577
    :cond_3
    const/4 v0, 0x1

    #@50
    invoke-direct {p0, p2, v0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setProtocols(Ljava/lang/String;Z)V

    #@53
    .line 558
    :goto_0
    return-void

    #@54
    .line 579
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
    .line 123
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->initHttpEngine()V

    #@3
    .line 126
    :cond_0
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->execute(Z)Z

    #@7
    move-result v0

    #@8
    .line 127
    .local v0, "success":Z
    if-eqz v0, :cond_0

    #@a
    .line 122
    return-void
.end method

.method public final disconnect()V
    .locals 1

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@7
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->disconnect()V

    #@a
    .line 130
    return-void
.end method

.method public getConnectTimeout()I
    .locals 1

    #@0
    .prologue
    .line 302
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
    .line 149
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    #@4
    move-result-object v1

    #@5
    .line 150
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
    .line 151
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
    .line 152
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
    .line 154
    :cond_0
    return-object v4

    #@29
    .line 155
    .end local v1    # "response":Lcom/android/okhttp/internal/http/HttpEngine;
    :catch_0
    move-exception v0

    #@2a
    .line 156
    .local v0, "e":Ljava/io/IOException;
    return-object v4
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 191
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
    .line 192
    :catch_0
    move-exception v0

    #@a
    .line 193
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
    .line 204
    if-nez p1, :cond_0

    #@3
    .line 205
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
    .line 204
    :goto_0
    return-object v1

    #@14
    .line 206
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
    .line 207
    :catch_0
    move-exception v0

    #@1e
    .line 208
    .local v0, "e":Ljava/io/IOException;
    return-object v2
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 214
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
    .line 215
    :catch_0
    move-exception v0

    #@a
    .line 216
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
    .line 222
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/android/okhttp/Headers;

    #@3
    move-result-object v1

    #@4
    .line 223
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
    .line 222
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 224
    :catch_0
    move-exception v0

    #@1a
    .line 225
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
    .line 239
    iget-boolean v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->doInput:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 240
    new-instance v1, Ljava/net/ProtocolException;

    #@6
    const-string/jumbo v2, "This protocol does not support input"

    #@9
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    #@10
    move-result-object v0

    #@11
    .line 249
    .local v0, "response":Lcom/android/okhttp/internal/http/HttpEngine;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponseCode()I

    #@14
    move-result v1

    #@15
    const/16 v2, 0x190

    #@17
    if-lt v1, v2, :cond_1

    #@19
    .line 250
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
    .line 253
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

.method public getInstanceFollowRedirects()Z
    .locals 1

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getFollowRedirects()Z

    #@5
    move-result v0

    #@6
    return v0
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
    .line 257
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connect()V

    #@3
    .line 259
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@5
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getBufferedRequestBody()Lcom/android/okhttp/okio/BufferedSink;

    #@8
    move-result-object v0

    #@9
    .line 260
    .local v0, "sink":Lcom/android/okhttp/okio/BufferedSink;
    if-nez v0, :cond_0

    #@b
    .line 261
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
    .line 262
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@29
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponse()Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_1

    #@2f
    .line 263
    new-instance v1, Ljava/net/ProtocolException;

    #@31
    const-string/jumbo v2, "cannot write request body after response has been read"

    #@34
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1

    #@38
    .line 266
    :cond_1
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    #@3b
    move-result-object v1

    #@3c
    return-object v1
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    #@3
    move-result-object v3

    #@4
    .line 271
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 272
    .local v0, "hostName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    #@b
    move-result v4

    #@c
    const/4 v5, -0x1

    #@d
    if-eq v4, v5, :cond_1

    #@f
    .line 273
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    #@12
    move-result v1

    #@13
    .line 275
    .local v1, "hostPort":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->usingProxy()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 276
    iget-object v4, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@1b
    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Ljava/net/InetSocketAddress;

    #@25
    .line 277
    .local v2, "proxyAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 278
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@2c
    move-result v1

    #@2d
    .line 280
    .end local v2    # "proxyAddress":Ljava/net/InetSocketAddress;
    :cond_0
    new-instance v4, Ljava/net/SocketPermission;

    #@2f
    new-instance v5, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    const-string/jumbo v6, ":"

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    const-string/jumbo v6, "connect, resolve"

    #@4a
    invoke-direct {v4, v5, v6}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    return-object v4

    #@4e
    .line 274
    .end local v1    # "hostPort":I
    :cond_1
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    invoke-static {v4}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    #@55
    move-result v1

    #@56
    .restart local v1    # "hostPort":I
    goto :goto_0
.end method

.method public getReadTimeout()I
    .locals 1

    #@0
    .prologue
    .line 310
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
    .line 230
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 232
    const-string/jumbo v1, "Cannot access request header fields after connection is set"

    #@9
    .line 231
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 235
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
    .line 284
    if-nez p1, :cond_0

    #@3
    return-object v0

    #@4
    .line 285
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
    .line 521
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
    .line 517
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
    .line 289
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@2
    int-to-long v2, p1

    #@3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@5
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    #@8
    .line 288
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 2
    .param p1, "contentLength"    # I

    #@0
    .prologue
    .line 612
    int-to-long v0, p1

    #@1
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setFixedLengthStreamingMode(J)V

    #@4
    .line 611
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 3
    .param p1, "contentLength"    # J

    #@0
    .prologue
    .line 616
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
    .line 617
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
    .line 618
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
    .line 619
    :cond_2
    iput-wide p1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    #@2b
    .line 620
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
    .line 615
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 7
    .param p1, "newValue"    # J

    #@0
    .prologue
    .line 550
    invoke-super {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    #@3
    .line 551
    iget-wide v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->ifModifiedSince:J

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 552
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
    .line 549
    :goto_0
    return-void

    #@1f
    .line 554
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
    .line 294
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkHttpClient;->setFollowRedirects(Z)V

    #@5
    .line 293
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 4
    .param p1, "timeoutMillis"    # I

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@2
    int-to-long v2, p1

    #@3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@5
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    #@8
    .line 305
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
    .line 605
    sget-object v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->METHODS:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 606
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
    .line 608
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->method:Ljava/lang/String;

    #@31
    .line 604
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 526
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Cannot set request property after connection is made"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 528
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 529
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v1, "field == null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 531
    :cond_1
    if-nez p2, :cond_2

    #@1a
    .line 537
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
    .line 538
    return-void

    #@3d
    .line 542
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
    .line 543
    :cond_3
    const/4 v0, 0x0

    #@50
    invoke-direct {p0, p2, v0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setProtocols(Ljava/lang/String;Z)V

    #@53
    .line 524
    :goto_0
    return-void

    #@54
    .line 545
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
    .line 510
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 511
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    #@7
    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    #@a
    move-result-object v0

    #@b
    .line 513
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
    .line 512
    .end local v0    # "proxy":Ljava/net/Proxy;
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@19
    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    #@1c
    move-result-object v0

    #@1d
    goto :goto_0
.end method
