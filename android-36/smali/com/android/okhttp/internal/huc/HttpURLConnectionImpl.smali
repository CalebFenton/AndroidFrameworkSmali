.class public Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnectionImpl.java"


# static fields
.field private static final blacklist EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

.field private static final blacklist METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist client:Lcom/android/okhttp/OkHttpClient;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private blacklist fixedContentLength:J

.field private blacklist followUpCount:I

.field blacklist handshake:Lcom/android/okhttp/Handshake;

.field protected greylist httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected blacklist httpEngineFailure:Ljava/io/IOException;

.field private blacklist requestHeaders:Lcom/android/okhttp/Headers$Builder;

.field private blacklist responseHeaders:Lcom/android/okhttp/Headers;

.field private blacklist route:Lcom/android/okhttp/Route;

.field private blacklist urlFilter:Lcom/android/okhttp/internal/URLFilter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 85
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v7, "TRACE"

    const-string v8, "PATCH"

    const-string v1, "OPTIONS"

    const-string v2, "GET"

    const-string v3, "HEAD"

    const-string v4, "POST"

    const-string v5, "PUT"

    const-string v6, "DELETE"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->METHODS:Ljava/util/Set;

    const/4 v0, 0x0

    .line 87
    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V
    .registers 5

    .line 118
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 92
    new-instance p1, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {p1}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    iput-object p1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    const-wide/16 v0, -0x1

    .line 95
    iput-wide v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    .line 119
    iput-object p2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/URLFilter;)V
    .registers 4

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V

    .line 124
    iput-object p3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->urlFilter:Lcom/android/okhttp/internal/URLFilter;

    return-void
.end method

.method private blacklist defaultUserAgent()Ljava/lang/String;
    .registers 1

    .line 394
    const-string p0, "http.agent"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 395
    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {}, Lcom/android/okhttp/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist execute(Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->urlFilter:Lcom/android/okhttp/internal/URLFilter;

    if-eqz v0, :cond_11

    .line 462
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/URLFilter;->checkURLPermitted(Ljava/net/URL;)V

    :cond_11
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 465
    :try_start_13
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->sendRequest()V

    .line 466
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 468
    invoke-interface {v2}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    .line 469
    invoke-interface {v2}, Lcom/android/okhttp/Connection;->getHandshake()Lcom/android/okhttp/Handshake;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->handshake:Lcom/android/okhttp/Handshake;

    goto :goto_3b

    :catchall_2d
    move-exception p1

    move v0, v1

    goto :goto_6c

    :catch_30
    move-exception p1

    goto :goto_43

    :catch_32
    move-exception p1

    goto :goto_53

    :catch_34
    move-exception p1

    goto :goto_65

    :cond_36
    const/4 v2, 0x0

    .line 471
    iput-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    .line 472
    iput-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->handshake:Lcom/android/okhttp/Handshake;

    :goto_3b
    if-eqz p1, :cond_42

    .line 475
    iget-object p1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {p1}, Lcom/android/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_42
    .catch Lcom/android/okhttp/internal/http/RequestException; {:try_start_13 .. :try_end_42} :catch_34
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_13 .. :try_end_42} :catch_32
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_42} :catch_30
    .catchall {:try_start_13 .. :try_end_42} :catchall_2d

    :cond_42
    return v1

    .line 500
    :goto_43
    :try_start_43
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2, p1}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v2
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_2d

    if-eqz v2, :cond_50

    .line 503
    :try_start_4b
    iput-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_4e

    return v0

    :catchall_4e
    move-exception p1

    goto :goto_6c

    .line 508
    :cond_50
    :try_start_50
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 509
    throw p1

    .line 487
    :goto_53
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2, p1}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Lcom/android/okhttp/internal/http/RouteException;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v2
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_2d

    if-eqz v2, :cond_5e

    .line 490
    :try_start_5b
    iput-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;
    :try_end_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_4e

    return v0

    .line 495
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object p1

    .line 496
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 497
    throw p1

    .line 482
    :goto_65
    invoke-virtual {p1}, Lcom/android/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object p1

    .line 483
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 484
    throw p1
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_2d

    :goto_6c
    if-eqz v0, :cond_77

    .line 513
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object p0

    .line 514
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    .line 516
    :cond_77
    throw p1
.end method

.method private blacklist getHeaders()Lcom/android/okhttp/Headers;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseHeaders:Lcom/android/okhttp/Headers;

    if-nez v0, :cond_32

    .line 167
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    .line 170
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->protocol()Lcom/android/okhttp/Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/okhttp/internal/http/OkHeaders;->RESPONSE_SOURCE:Ljava/lang/String;

    .line 171
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseSourceHeader(Lcom/android/okhttp/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseHeaders:Lcom/android/okhttp/Headers;

    .line 174
    :cond_32
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->responseHeaders:Lcom/android/okhttp/Headers;

    return-object p0
.end method

.method private blacklist getResponse()Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->initHttpEngine()V

    .line 406
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 407
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    return-object p0

    :cond_e
    :goto_e
    const/4 v0, 0x1

    .line 411
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->execute(Z)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_e

    .line 415
    :cond_16
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v1

    .line 416
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->followUpRequest()Lcom/android/okhttp/Request;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 419
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 420
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    return-object p0

    .line 423
    :cond_2c
    iget v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->followUpCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->followUpCount:I

    const/16 v0, 0x14

    if-gt v3, v0, :cond_8e

    .line 428
    invoke-virtual {v2}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    .line 429
    invoke-virtual {v2}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    .line 434
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequestBody()Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    .line 435
    invoke-virtual {v2}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_59

    move-object v0, v4

    :cond_59
    if-eqz v0, :cond_6a

    .line 439
    instance-of v3, v0, Lcom/android/okhttp/internal/http/RetryableSink;

    if-eqz v3, :cond_60

    goto :goto_6a

    .line 440
    :cond_60
    new-instance v0, Ljava/net/HttpRetryException;

    const-string v1, "Cannot retry streamed HTTP body"

    iget p0, p0, Ljava/net/HttpURLConnection;->responseCode:I

    invoke-direct {v0, v1, p0}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 443
    :cond_6a
    :goto_6a
    iget-object v3, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v3

    .line 444
    iget-object v5, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/HttpEngine;->sameConnection(Lcom/android/okhttp/HttpUrl;)Z

    move-result v5

    if-nez v5, :cond_80

    .line 445
    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    goto :goto_81

    :cond_80
    move-object v4, v3

    .line 449
    :goto_81
    invoke-virtual {v2}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    goto :goto_e

    .line 424
    :cond_8e
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->followUpCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist initHttpEngine()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    if-nez v0, :cond_50

    .line 321
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    .line 327
    :try_start_c
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->doOutput:Z

    if-eqz v0, :cond_43

    .line 328
    iget-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 330
    const-string v0, "POST"

    iput-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    goto :goto_43

    :catch_1f
    move-exception v0

    goto :goto_4d

    .line 331
    :cond_21
    iget-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_43

    .line 332
    :cond_2a
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not support writing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_43
    :goto_43
    iget-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_4c} :catch_1f

    return-void

    .line 338
    :goto_4d
    iput-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 339
    throw v0

    .line 320
    :cond_50
    throw v0
.end method

.method private blacklist newHttpEngine(Ljava/lang/String;Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 347
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 348
    sget-object v1, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    goto :goto_d

    :cond_c
    move-object v1, v2

    .line 350
    :goto_d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    .line 351
    sget-object v4, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/okhttp/internal/Internal;->getHttpUrlChecked(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v3

    .line 352
    new-instance v4, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v4}, Lcom/android/okhttp/Request$Builder;-><init>()V

    .line 353
    invoke-virtual {v4, v3}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object v3

    move-object/from16 v4, p1

    .line 354
    invoke-virtual {v3, v4, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    .line 355
    iget-object v3, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v3}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v3

    .line 356
    invoke-virtual {v3}, Lcom/android/okhttp/Headers;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_36
    if-ge v7, v5, :cond_46

    .line 357
    invoke-virtual {v3, v7}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/android/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 361
    :cond_46
    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 363
    iget-wide v4, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    const-wide/16 v7, -0x1

    cmp-long v7, v4, v7

    if-eqz v7, :cond_5e

    .line 364
    const-string v7, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_6b

    .line 365
    :cond_5e
    iget v4, v0, Ljava/net/HttpURLConnection;->chunkLength:I

    if-lez v4, :cond_6a

    .line 366
    const-string v4, "Transfer-Encoding"

    const-string v5, "chunked"

    invoke-virtual {v1, v4, v5}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_6b

    :cond_6a
    const/4 v6, 0x1

    .line 372
    :goto_6b
    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_78

    .line 373
    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v4, v5}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    :cond_78
    move v10, v6

    .line 377
    const-string v4, "User-Agent"

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_88

    .line 378
    invoke-direct {v0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->defaultUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 381
    :cond_88
    invoke-virtual {v1}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v9

    .line 384
    iget-object v1, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    .line 385
    sget-object v3, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual {v3, v1}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    move-result-object v3

    if-eqz v3, :cond_a6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v3

    if-nez v3, :cond_a6

    .line 386
    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->clone()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/okhttp/OkHttpClient;->setCache(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v1

    :cond_a6
    move-object v8, v1

    .line 389
    new-instance v7, Lcom/android/okhttp/internal/http/HttpEngine;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v7 .. v15}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    return-object v7
.end method

.method private static blacklist responseSourceHeader(Lcom/android/okhttp/Response;)Ljava/lang/String;
    .registers 3

    .line 178
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->networkResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    if-nez v0, :cond_25

    .line 179
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    if-nez v0, :cond_f

    .line 180
    const-string p0, "NONE"

    return-object p0

    .line 182
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CACHE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 184
    :cond_25
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    if-nez v0, :cond_41

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 187
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONDITIONAL_CACHE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->networkResponse()Lcom/android/okhttp/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist setProtocols(Ljava/lang/String;Z)V
    .registers 6

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_10

    .line 613
    iget-object p2, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {p2}, Lcom/android/okhttp/OkHttpClient;->getProtocols()Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 615
    :cond_10
    const-string p2, ","

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v1, 0x0

    :goto_19
    if-ge v1, p2, :cond_2e

    aget-object v2, p1, v1

    .line 617
    :try_start_1d
    invoke-static {v2}, Lcom/android/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/android/okhttp/Protocol;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_27

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :catch_27
    move-exception p0

    .line 619
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 622
    :cond_2e
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {p0, v0}, Lcom/android/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    return-void
.end method


# virtual methods
.method public final whitelist test-api addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 580
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_4a

    if-eqz p1, :cond_42

    if-nez p2, :cond_26

    .line 592
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring header "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because its value was null."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    return-void

    .line 597
    :cond_26
    const-string v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_3d

    .line 600
    :cond_37
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    return-void

    :cond_3d
    :goto_3d
    const/4 p1, 0x1

    .line 598
    invoke-direct {p0, p2, p1}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setProtocols(Ljava/lang/String;Z)V

    return-void

    .line 584
    :cond_42
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "field == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 581
    :cond_4a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add request property after connection is made"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final whitelist test-api connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->initHttpEngine()V

    :cond_3
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->execute(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void
.end method

.method public final whitelist test-api disconnect()V
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-nez p0, :cond_5

    return-void

    .line 139
    :cond_5
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->cancel()V

    return-void
.end method

.method public whitelist test-api getConnectTimeout()I
    .registers 1

    .line 307
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getConnectTimeout()I

    move-result p0

    return p0
.end method

.method public final whitelist test-api getErrorStream()Ljava/io/InputStream;
    .registers 4

    const/4 v0, 0x0

    .line 154
    :try_start_1
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object p0

    .line 155
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->hasBody(Lcom/android/okhttp/Response;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 156
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->code()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_28

    .line 157
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    :cond_28
    return-object v0
.end method

.method public final whitelist test-api getHeaderField(I)Ljava/lang/String;
    .registers 2

    .line 196
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/android/okhttp/Headers;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public final whitelist test-api getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_13

    .line 210
    :try_start_2
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :cond_13
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/android/okhttp/Headers;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final whitelist test-api getHeaderFieldKey(I)Ljava/lang/String;
    .registers 2

    .line 219
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/android/okhttp/Headers;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public final whitelist test-api getHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 227
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getHeaders()Lcom/android/okhttp/Headers;

    move-result-object v0

    .line 228
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/http/StatusLine;->get(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object p0

    .line 227
    invoke-static {v0, p0}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19

    return-object p0

    .line 230
    :catch_19
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method

.method public final whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->doInput:Z

    if-eqz v0, :cond_29

    .line 248
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object v0

    .line 254
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-ge v1, v2, :cond_1d

    .line 258
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 255
    :cond_1d
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object p0, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_29
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "This protocol does not support input"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api getInstanceFollowRedirects()Z
    .registers 1

    .line 303
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getFollowRedirects()Z

    move-result p0

    return p0
.end method

.method public final whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->connect()V

    .line 264
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getBufferedRequestBody()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 267
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result p0

    if-nez p0, :cond_18

    .line 271
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    .line 268
    :cond_18
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "cannot write request body after response has been read"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 266
    :cond_20
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method does not support a request body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getPermission()Ljava/security/Permission;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_14

    .line 278
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_1c

    .line 279
    :cond_14
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    .line 280
    :goto_1c
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->usingProxy()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 281
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p0

    check-cast p0, Ljava/net/InetSocketAddress;

    .line 282
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 285
    :cond_36
    new-instance p0, Ljava/net/SocketPermission;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect, resolve"

    invoke-direct {p0, v0, v1}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public whitelist test-api getReadTimeout()I
    .registers 1

    .line 315
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    move-result p0

    return p0
.end method

.method public final whitelist test-api getRequestProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 235
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_10

    .line 240
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {p0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 236
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access request header fields after connection is set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final whitelist test-api getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 290
    :cond_4
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api getResponseCode()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result p0

    return p0
.end method

.method public whitelist test-api getResponseMessage()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    invoke-direct {p0}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->getResponse()Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->message()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api setConnectTimeout(I)V
    .registers 4

    .line 294
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public whitelist test-api setFixedLengthStreamingMode(I)V
    .registers 4

    int-to-long v0, p1

    .line 633
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public whitelist test-api setFixedLengthStreamingMode(J)V
    .registers 5

    .line 637
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_2b

    .line 638
    iget v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    if-gtz v0, :cond_23

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1b

    .line 640
    iput-wide p1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->fixedContentLength:J

    const-wide/32 v0, 0x7fffffff

    .line 641
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    return-void

    .line 639
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "contentLength < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 638
    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already in chunked mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 637
    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already connected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api setIfModifiedSince(J)V
    .registers 6

    .line 571
    invoke-super {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 572
    iget-wide p1, p0, Ljava/net/HttpURLConnection;->ifModifiedSince:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const-string p2, "If-Modified-Since"

    if-eqz p1, :cond_1e

    .line 573
    iget-object p1, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Ljava/net/HttpURLConnection;->ifModifiedSince:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    return-void

    .line 575
    :cond_1e
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {p0, p2}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    return-void
.end method

.method public whitelist test-api setInstanceFollowRedirects(Z)V
    .registers 2

    .line 299
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/OkHttpClient;->setFollowRedirects(Z)V

    return-void
.end method

.method public whitelist test-api setReadTimeout(I)V
    .registers 4

    .line 311
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public whitelist test-api setRequestMethod(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 626
    sget-object v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->METHODS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 629
    iput-object p1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    return-void

    .line 627
    :cond_b
    new-instance p0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " but was "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final whitelist test-api setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 546
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_4a

    if-eqz p1, :cond_42

    if-nez p2, :cond_26

    .line 558
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring header "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because its value was null."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    return-void

    .line 563
    :cond_26
    const-string v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_3d

    .line 566
    :cond_37
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->requestHeaders:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    return-void

    :cond_3d
    :goto_3d
    const/4 p1, 0x0

    .line 564
    invoke-direct {p0, p2, p1}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setProtocols(Ljava/lang/String;Z)V

    return-void

    .line 550
    :cond_42
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "field == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 547
    :cond_4a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot set request property after connection is made"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final whitelist test-api usingProxy()Z
    .registers 2

    .line 531
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->route:Lcom/android/okhttp/Route;

    if-eqz v0, :cond_9

    .line 532
    invoke-virtual {v0}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object p0

    goto :goto_f

    .line 533
    :cond_9
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object p0

    :goto_f
    if-eqz p0, :cond_1b

    .line 534
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p0

    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq p0, v0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method
