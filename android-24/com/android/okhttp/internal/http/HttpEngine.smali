.class public final Lcom/android/okhttp/internal/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/HttpEngine$1;,
        Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
    }
.end annotation


# static fields
.field private static final EMPTY_BODY:Lcom/android/okhttp/ResponseBody;

.field public static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private address:Lcom/android/okhttp/Address;

.field public final bufferRequestBody:Z

.field private bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

.field private cacheResponse:Lcom/android/okhttp/Response;

.field private cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

.field private final callerWritesRequestBody:Z

.field final client:Lcom/android/okhttp/OkHttpClient;

.field private connection:Lcom/android/okhttp/Connection;

.field private final forWebSocket:Z

.field private networkRequest:Lcom/android/okhttp/Request;

.field private final priorResponse:Lcom/android/okhttp/Response;

.field private requestBodyOut:Lcom/android/okhttp/okio/Sink;

.field private route:Lcom/android/okhttp/Route;

.field private routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

.field sentRequestMillis:J

.field private storeRequest:Lcom/android/okhttp/internal/http/CacheRequest;

.field private transparentGzip:Z

.field private transport:Lcom/android/okhttp/internal/http/Transport;

.field private final userRequest:Lcom/android/okhttp/Request;

.field private userResponse:Lcom/android/okhttp/Response;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/Connection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/Transport;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/Response;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/android/okhttp/Response;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 100
    new-instance v0, Lcom/android/okhttp/internal/http/HttpEngine$1;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/internal/http/HttpEngine$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/okhttp/internal/http/HttpEngine;->EMPTY_BODY:Lcom/android/okhttp/ResponseBody;

    #@7
    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RouteSelector;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V
    .locals 3
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p2, "request"    # Lcom/android/okhttp/Request;
    .param p3, "bufferRequestBody"    # Z
    .param p4, "callerWritesRequestBody"    # Z
    .param p5, "forWebSocket"    # Z
    .param p6, "connection"    # Lcom/android/okhttp/Connection;
    .param p7, "routeSelector"    # Lcom/android/okhttp/internal/http/RouteSelector;
    .param p8, "requestBodyOut"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .param p9, "priorResponse"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 123
    const-wide/16 v0, -0x1

    #@6
    iput-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    #@8
    .line 189
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@a
    .line 190
    iput-object p2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@c
    .line 191
    iput-boolean p3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    #@e
    .line 192
    iput-boolean p4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    #@10
    .line 193
    iput-boolean p5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    #@12
    .line 194
    iput-object p6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@14
    .line 195
    iput-object p7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    #@16
    .line 196
    iput-object p8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    #@18
    .line 197
    iput-object p9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    #@1a
    .line 199
    if-eqz p6, :cond_0

    #@1c
    .line 200
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@1e
    invoke-virtual {v0, p6, p0}, Lcom/android/okhttp/internal/Internal;->setOwner(Lcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/HttpEngine;)V

    #@21
    .line 201
    invoke-virtual {p6}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->route:Lcom/android/okhttp/Route;

    #@27
    .line 188
    :goto_0
    return-void

    #@28
    .line 203
    :cond_0
    iput-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->route:Lcom/android/okhttp/Route;

    #@2a
    goto :goto_0
.end method

.method private cacheWritingResponse(Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .locals 8
    .param p1, "cacheRequest"    # Lcom/android/okhttp/internal/http/CacheRequest;
    .param p2, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 931
    if-nez p1, :cond_0

    #@2
    return-object p2

    #@3
    .line 932
    :cond_0
    invoke-interface {p1}, Lcom/android/okhttp/internal/http/CacheRequest;->body()Lcom/android/okhttp/okio/Sink;

    #@6
    move-result-object v1

    #@7
    .line 933
    .local v1, "cacheBodyUnbuffered":Lcom/android/okhttp/okio/Sink;
    if-nez v1, :cond_1

    #@9
    return-object p2

    #@a
    .line 935
    :cond_1
    invoke-virtual {p2}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    #@11
    move-result-object v3

    #@12
    .line 936
    .local v3, "source":Lcom/android/okhttp/okio/BufferedSource;
    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    .line 938
    .local v0, "cacheBody":Lcom/android/okhttp/okio/BufferedSink;
    new-instance v2, Lcom/android/okhttp/internal/http/HttpEngine$2;

    #@18
    invoke-direct {v2, p0, v3, p1, v0}, Lcom/android/okhttp/internal/http/HttpEngine$2;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/okio/BufferedSink;)V

    #@1b
    .line 980
    .local v2, "cacheWritingSource":Lcom/android/okhttp/okio/Source;
    invoke-virtual {p2}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    #@1e
    move-result-object v4

    #@1f
    .line 981
    new-instance v5, Lcom/android/okhttp/internal/http/RealResponseBody;

    #@21
    invoke-virtual {p2}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@24
    move-result-object v6

    #@25
    invoke-static {v2}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    #@28
    move-result-object v7

    #@29
    invoke-direct {v5, v6, v7}, Lcom/android/okhttp/internal/http/RealResponseBody;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V

    #@2c
    .line 980
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    #@33
    move-result-object v4

    #@34
    return-object v4
.end method

.method private static combine(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;
    .locals 6
    .param p0, "cachedHeaders"    # Lcom/android/okhttp/Headers;
    .param p1, "networkHeaders"    # Lcom/android/okhttp/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1014
    new-instance v2, Lcom/android/okhttp/Headers$Builder;

    #@2
    invoke-direct {v2}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@5
    .line 1016
    .local v2, "result":Lcom/android/okhttp/Headers$Builder;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    #@9
    move-result v3

    #@a
    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_3

    #@c
    .line 1017
    invoke-virtual {p0, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 1018
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    .line 1019
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "Warning"

    #@17
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_1

    #@1d
    const-string/jumbo v5, "1"

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_1

    #@26
    .line 1016
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1022
    :cond_1
    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_2

    #@2f
    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    if-nez v5, :cond_0

    #@35
    .line 1023
    :cond_2
    invoke-virtual {v2, v0, v4}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@38
    goto :goto_1

    #@39
    .line 1027
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    #@3a
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->size()I

    #@3d
    move-result v3

    #@3e
    :goto_2
    if-ge v1, v3, :cond_6

    #@40
    .line 1028
    invoke-virtual {p1, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    .line 1029
    .restart local v0    # "fieldName":Ljava/lang/String;
    const-string/jumbo v5, "Content-Length"

    #@47
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4a
    move-result v5

    #@4b
    if-eqz v5, :cond_5

    #@4d
    .line 1027
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@4f
    goto :goto_2

    #@50
    .line 1032
    :cond_5
    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    #@53
    move-result v5

    #@54
    if-eqz v5, :cond_4

    #@56
    .line 1033
    invoke-virtual {p1, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v2, v0, v5}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@5d
    goto :goto_3

    #@5e
    .line 1037
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@61
    move-result-object v5

    #@62
    return-object v5
.end method

.method private connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RequestException;,
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@2
    if-eqz v1, :cond_0

    #@4
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v1

    #@a
    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    #@c
    if-nez v1, :cond_1

    #@e
    .line 320
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@10
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@12
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/http/HttpEngine;->createAddress(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Address;

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->address:Lcom/android/okhttp/Address;

    #@18
    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->address:Lcom/android/okhttp/Address;

    #@1a
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@1c
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@1e
    invoke-static {v1, v2, v3}, Lcom/android/okhttp/internal/http/RouteSelector;->get(Lcom/android/okhttp/Address;Lcom/android/okhttp/Request;Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/http/RouteSelector;

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->createNextConnection()Lcom/android/okhttp/Connection;

    #@27
    move-result-object v1

    #@28
    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@2a
    .line 329
    sget-object v1, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@2c
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@2e
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@30
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@32
    invoke-virtual {v1, v2, v3, p0, v4}, Lcom/android/okhttp/internal/Internal;->connectAndSetOwner(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/Request;)V

    #@35
    .line 330
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@37
    invoke-virtual {v1}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    #@3a
    move-result-object v1

    #@3b
    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->route:Lcom/android/okhttp/Route;

    #@3d
    .line 316
    return-void

    #@3e
    .line 323
    :catch_0
    move-exception v0

    #@3f
    .line 324
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/okhttp/internal/http/RequestException;

    #@41
    invoke-direct {v1, v0}, Lcom/android/okhttp/internal/http/RequestException;-><init>(Ljava/io/IOException;)V

    #@44
    throw v1
.end method

.method private connectFailed(Lcom/android/okhttp/internal/http/RouteSelector;Ljava/io/IOException;)V
    .locals 3
    .param p1, "routeSelector"    # Lcom/android/okhttp/internal/http/RouteSelector;
    .param p2, "e"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 493
    sget-object v1, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@2
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@4
    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/Internal;->recycleCount(Lcom/android/okhttp/Connection;)I

    #@7
    move-result v1

    #@8
    if-lez v1, :cond_0

    #@a
    return-void

    #@b
    .line 494
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@d
    invoke-virtual {v1}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    #@10
    move-result-object v0

    #@11
    .line 495
    .local v0, "failedRoute":Lcom/android/okhttp/Route;
    invoke-virtual {p1, v0, p2}, Lcom/android/okhttp/internal/http/RouteSelector;->connectFailed(Lcom/android/okhttp/Route;Ljava/io/IOException;)V

    #@14
    .line 491
    return-void
.end method

.method private static createAddress(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Address;
    .locals 12
    .param p0, "client"    # Lcom/android/okhttp/OkHttpClient;
    .param p1, "request"    # Lcom/android/okhttp/Request;

    #@0
    .prologue
    .line 1129
    const/4 v4, 0x0

    #@1
    .line 1130
    .local v4, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v5, 0x0

    #@2
    .line 1131
    .local v5, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v6, 0x0

    #@3
    .line 1132
    .local v6, "certificatePinner":Lcom/android/okhttp/CertificatePinner;
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->isHttps()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1133
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@c
    move-result-object v4

    #@d
    .line 1134
    .local v4, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    #@10
    move-result-object v5

    #@11
    .line 1135
    .local v5, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getCertificatePinner()Lcom/android/okhttp/CertificatePinner;

    #@14
    move-result-object v6

    #@15
    .line 1138
    .end local v4    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v5    # "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    .end local v6    # "certificatePinner":Lcom/android/okhttp/CertificatePinner;
    :cond_0
    new-instance v0, Lcom/android/okhttp/Address;

    #@17
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl;->rfc2732host()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->port()I

    #@26
    move-result v2

    #@27
    .line 1139
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getSocketFactory()Ljavax/net/SocketFactory;

    #@2a
    move-result-object v3

    #@2b
    .line 1140
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getAuthenticator()Lcom/android/okhttp/Authenticator;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    #@32
    move-result-object v8

    #@33
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getProtocols()Ljava/util/List;

    #@36
    move-result-object v9

    #@37
    .line 1141
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getConnectionSpecs()Ljava/util/List;

    #@3a
    move-result-object v10

    #@3b
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getProxySelector()Ljava/net/ProxySelector;

    #@3e
    move-result-object v11

    #@3f
    .line 1138
    invoke-direct/range {v0 .. v11}, Lcom/android/okhttp/Address;-><init>(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/android/okhttp/CertificatePinner;Lcom/android/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    #@42
    return-object v0
.end method

.method private createNextConnection()Lcom/android/okhttp/Connection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@2
    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->getConnectionPool()Lcom/android/okhttp/ConnectionPool;

    #@5
    move-result-object v1

    #@6
    .line 337
    .local v1, "pool":Lcom/android/okhttp/ConnectionPool;
    :goto_0
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->address:Lcom/android/okhttp/Address;

    #@8
    invoke-virtual {v1, v4}, Lcom/android/okhttp/ConnectionPool;->get(Lcom/android/okhttp/Address;)Lcom/android/okhttp/Connection;

    #@b
    move-result-object v2

    #@c
    .local v2, "pooled":Lcom/android/okhttp/Connection;
    if-eqz v2, :cond_2

    #@e
    .line 338
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@10
    invoke-virtual {v4}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    const-string/jumbo v5, "GET"

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_0

    #@1d
    sget-object v4, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@1f
    invoke-virtual {v4, v2}, Lcom/android/okhttp/internal/Internal;->isReadable(Lcom/android/okhttp/Connection;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_1

    #@25
    .line 339
    :cond_0
    return-object v2

    #@26
    .line 341
    :cond_1
    invoke-virtual {v2}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    #@29
    move-result-object v4

    #@2a
    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    #@2d
    goto :goto_0

    #@2e
    .line 345
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    #@30
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/RouteSelector;->next()Lcom/android/okhttp/Route;

    #@33
    move-result-object v3

    #@34
    .line 346
    .local v3, "route":Lcom/android/okhttp/Route;
    new-instance v4, Lcom/android/okhttp/Connection;

    #@36
    invoke-direct {v4, v1, v3}, Lcom/android/okhttp/Connection;-><init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Route;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    return-object v4

    #@3a
    .line 347
    .end local v3    # "route":Lcom/android/okhttp/Route;
    :catch_0
    move-exception v0

    #@3b
    .line 348
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lcom/android/okhttp/internal/http/RouteException;

    #@3d
    invoke-direct {v4, v0}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    #@40
    throw v4
.end method

.method public static hasBody(Lcom/android/okhttp/Response;)Z
    .locals 8
    .param p0, "response"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 662
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    const-string/jumbo v2, "HEAD"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 663
    return v6

    #@14
    .line 666
    :cond_0
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    #@17
    move-result v0

    #@18
    .line 667
    .local v0, "responseCode":I
    const/16 v1, 0x64

    #@1a
    if-lt v0, v1, :cond_1

    #@1c
    const/16 v1, 0xc8

    #@1e
    if-lt v0, v1, :cond_2

    #@20
    .line 668
    :cond_1
    const/16 v1, 0xcc

    #@22
    if-eq v0, v1, :cond_2

    #@24
    .line 669
    const/16 v1, 0x130

    #@26
    if-eq v0, v1, :cond_2

    #@28
    .line 670
    return v7

    #@29
    .line 676
    :cond_2
    invoke-static {p0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    #@2c
    move-result-wide v2

    #@2d
    const-wide/16 v4, -0x1

    #@2f
    cmp-long v1, v2, v4

    #@31
    if-nez v1, :cond_3

    #@33
    .line 677
    const-string/jumbo v1, "chunked"

    #@36
    const-string/jumbo v2, "Transfer-Encoding"

    #@39
    invoke-virtual {p0, v2}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@40
    move-result v1

    #@41
    .line 676
    if-eqz v1, :cond_4

    #@43
    .line 678
    :cond_3
    return v7

    #@44
    .line 681
    :cond_4
    return v6
.end method

.method private isRecoverable(Lcom/android/okhttp/internal/http/RouteException;)Z
    .locals 3
    .param p1, "e"    # Lcom/android/okhttp/internal/http/RouteException;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 424
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@3
    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 425
    return v2

    #@a
    .line 432
    :cond_0
    invoke-virtual {p1}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    #@d
    move-result-object v0

    #@e
    .line 435
    .local v0, "ioe":Ljava/io/IOException;
    instance-of v1, v0, Ljava/net/ProtocolException;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 436
    return v2

    #@13
    .line 441
    :cond_1
    instance-of v1, v0, Ljava/io/InterruptedIOException;

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 442
    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    #@19
    return v1

    #@1a
    .line 447
    :cond_2
    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    #@1c
    if-eqz v1, :cond_3

    #@1e
    .line 450
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    #@21
    move-result-object v1

    #@22
    instance-of v1, v1, Ljava/security/cert/CertificateException;

    #@24
    if-eqz v1, :cond_3

    #@26
    .line 451
    return v2

    #@27
    .line 454
    :cond_3
    instance-of v1, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@29
    if-eqz v1, :cond_4

    #@2b
    .line 456
    return v2

    #@2c
    .line 462
    :cond_4
    const/4 v1, 0x1

    #@2d
    return v1
.end method

.method private isRecoverable(Ljava/io/IOException;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 504
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@3
    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 505
    return v1

    #@a
    .line 509
    :cond_0
    instance-of v0, p1, Ljava/net/ProtocolException;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 510
    return v1

    #@f
    .line 514
    :cond_1
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 515
    return v1

    #@14
    .line 518
    :cond_2
    const/4 v0, 0x1

    #@15
    return v0
.end method

.method private maybeCache()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 530
    sget-object v2, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@2
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@4
    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    #@7
    move-result-object v1

    #@8
    .line 531
    .local v1, "responseCache":Lcom/android/okhttp/internal/InternalCache;
    if-nez v1, :cond_0

    #@a
    return-void

    #@b
    .line 534
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@d
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@f
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/http/CacheStrategy;->isCacheable(Lcom/android/okhttp/Response;Lcom/android/okhttp/Request;)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_2

    #@15
    .line 535
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@17
    invoke-virtual {v2}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 537
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@23
    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/InternalCache;->remove(Lcom/android/okhttp/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 542
    :cond_1
    :goto_0
    return-void

    #@27
    .line 546
    :cond_2
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@29
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@2c
    move-result-object v2

    #@2d
    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/InternalCache;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    #@30
    move-result-object v2

    #@31
    iput-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->storeRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    #@33
    .line 529
    return-void

    #@34
    .line 538
    :catch_0
    move-exception v0

    #@35
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method private networkRequest(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;
    .locals 7
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 691
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    #@4
    move-result-object v3

    #@5
    .line 693
    .local v3, "result":Lcom/android/okhttp/Request$Builder;
    const-string/jumbo v4, "Host"

    #@8
    invoke-virtual {p1, v4}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    if-nez v4, :cond_0

    #@e
    .line 694
    const-string/jumbo v4, "Host"

    #@11
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    #@14
    move-result-object v5

    #@15
    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@1c
    .line 697
    :cond_0
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@1e
    if-eqz v4, :cond_1

    #@20
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@22
    invoke-virtual {v4}, Lcom/android/okhttp/Connection;->getProtocol()Lcom/android/okhttp/Protocol;

    #@25
    move-result-object v4

    #@26
    sget-object v5, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    #@28
    if-eq v4, v5, :cond_2

    #@2a
    .line 698
    :cond_1
    const-string/jumbo v4, "Connection"

    #@2d
    invoke-virtual {p1, v4}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    if-nez v4, :cond_2

    #@33
    .line 699
    const-string/jumbo v4, "Connection"

    #@36
    const-string/jumbo v5, "Keep-Alive"

    #@39
    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@3c
    .line 702
    :cond_2
    const-string/jumbo v4, "Accept-Encoding"

    #@3f
    invoke-virtual {p1, v4}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    if-nez v4, :cond_3

    #@45
    .line 703
    const/4 v4, 0x1

    #@46
    iput-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    #@48
    .line 704
    const-string/jumbo v4, "Accept-Encoding"

    #@4b
    const-string/jumbo v5, "gzip"

    #@4e
    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@51
    .line 707
    :cond_3
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@53
    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    #@56
    move-result-object v0

    #@57
    .line 708
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_4

    #@59
    .line 712
    invoke-virtual {v3}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v4}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    #@60
    move-result-object v4

    #@61
    invoke-static {v4, v6}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    #@64
    move-result-object v2

    #@65
    .line 714
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v0, v4, v2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    #@6c
    move-result-object v1

    #@6d
    .line 717
    .local v1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v3, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->addCookies(Lcom/android/okhttp/Request$Builder;Ljava/util/Map;)V

    #@70
    .line 720
    .end local v1    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_4
    const-string/jumbo v4, "User-Agent"

    #@73
    invoke-virtual {p1, v4}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    if-nez v4, :cond_5

    #@79
    .line 721
    const-string/jumbo v4, "User-Agent"

    #@7c
    invoke-static {}, Lcom/android/okhttp/internal/Version;->userAgent()Ljava/lang/String;

    #@7f
    move-result-object v5

    #@80
    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@83
    .line 724
    :cond_5
    invoke-virtual {v3}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    #@86
    move-result-object v4

    #@87
    return-object v4
.end method

.method private readNetworkResponse()Lcom/android/okhttp/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 904
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@2
    invoke-interface {v1}, Lcom/android/okhttp/internal/http/Transport;->finishRequest()V

    #@5
    .line 906
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@7
    invoke-interface {v1}, Lcom/android/okhttp/internal/http/Transport;->readResponseHeaders()Lcom/android/okhttp/Response$Builder;

    #@a
    move-result-object v1

    #@b
    .line 907
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@d
    .line 906
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    #@10
    move-result-object v1

    #@11
    .line 908
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@13
    invoke-virtual {v2}, Lcom/android/okhttp/Connection;->getHandshake()Lcom/android/okhttp/Handshake;

    #@16
    move-result-object v2

    #@17
    .line 906
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    #@1a
    move-result-object v1

    #@1b
    .line 909
    sget-object v2, Lcom/android/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    #@1d
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    #@1f
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    .line 906
    invoke-virtual {v1, v2, v3}, Lcom/android/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    #@26
    move-result-object v1

    #@27
    .line 910
    sget-object v2, Lcom/android/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    #@29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2c
    move-result-wide v4

    #@2d
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    .line 906
    invoke-virtual {v1, v2, v3}, Lcom/android/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    #@38
    move-result-object v0

    #@39
    .line 913
    .local v0, "networkResponse":Lcom/android/okhttp/Response;
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    #@3b
    if-nez v1, :cond_0

    #@3d
    .line 914
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    #@40
    move-result-object v1

    #@41
    .line 915
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@43
    invoke-interface {v2, v0}, Lcom/android/okhttp/internal/http/Transport;->openResponseBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;

    #@46
    move-result-object v2

    #@47
    .line 914
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    #@4e
    move-result-object v0

    #@4f
    .line 919
    :cond_0
    sget-object v1, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@51
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@53
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->protocol()Lcom/android/okhttp/Protocol;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v1, v2, v3}, Lcom/android/okhttp/internal/Internal;->setProtocol(Lcom/android/okhttp/Connection;Lcom/android/okhttp/Protocol;)V

    #@5a
    .line 920
    return-object v0
.end method

.method private static stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .locals 2
    .param p0, "response"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 310
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 311
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    #@14
    move-result-object p0

    #@15
    .line 310
    .end local p0    # "response":Lcom/android/okhttp/Response;
    :cond_0
    return-object p0
.end method

.method private unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .locals 5
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 637
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    const-string/jumbo v2, "gzip"

    #@7
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@9
    const-string/jumbo v4, "Content-Encoding"

    #@c
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 641
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    #@19
    move-result-object v2

    #@1a
    if-nez v2, :cond_1

    #@1c
    .line 642
    return-object p1

    #@1d
    .line 638
    :cond_0
    return-object p1

    #@1e
    .line 645
    :cond_1
    new-instance v0, Lcom/android/okhttp/okio/GzipSource;

    #@20
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v0, v2}, Lcom/android/okhttp/okio/GzipSource;-><init>(Lcom/android/okhttp/okio/Source;)V

    #@2b
    .line 646
    .local v0, "responseBody":Lcom/android/okhttp/okio/GzipSource;
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    #@32
    move-result-object v2

    #@33
    .line 647
    const-string/jumbo v3, "Content-Encoding"

    #@36
    .line 646
    invoke-virtual {v2, v3}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@39
    move-result-object v2

    #@3a
    .line 648
    const-string/jumbo v3, "Content-Length"

    #@3d
    .line 646
    invoke-virtual {v2, v3}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@44
    move-result-object v1

    #@45
    .line 650
    .local v1, "strippedHeaders":Lcom/android/okhttp/Headers;
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2, v1}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    #@4c
    move-result-object v2

    #@4d
    .line 652
    new-instance v3, Lcom/android/okhttp/internal/http/RealResponseBody;

    #@4f
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    #@52
    move-result-object v4

    #@53
    invoke-direct {v3, v1, v4}, Lcom/android/okhttp/internal/http/RealResponseBody;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V

    #@56
    .line 650
    invoke-virtual {v2, v3}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    #@5d
    move-result-object v2

    #@5e
    return-object v2
.end method

.method private static validate(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)Z
    .locals 7
    .param p0, "cached"    # Lcom/android/okhttp/Response;
    .param p1, "network"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 990
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->code()I

    #@4
    move-result v2

    #@5
    const/16 v3, 0x130

    #@7
    if-ne v2, v3, :cond_0

    #@9
    .line 991
    return v6

    #@a
    .line 997
    :cond_0
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@d
    move-result-object v2

    #@e
    const-string/jumbo v3, "Last-Modified"

    #@11
    invoke-virtual {v2, v3}, Lcom/android/okhttp/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    #@14
    move-result-object v0

    #@15
    .line 998
    .local v0, "lastModified":Ljava/util/Date;
    if-eqz v0, :cond_1

    #@17
    .line 999
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v3, "Last-Modified"

    #@1e
    invoke-virtual {v2, v3}, Lcom/android/okhttp/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    #@21
    move-result-object v1

    #@22
    .line 1000
    .local v1, "networkLastModified":Ljava/util/Date;
    if-eqz v1, :cond_1

    #@24
    .line 1001
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@27
    move-result-wide v2

    #@28
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    #@2b
    move-result-wide v4

    #@2c
    cmp-long v2, v2, v4

    #@2e
    if-gez v2, :cond_1

    #@30
    .line 1002
    return v6

    #@31
    .line 1006
    .end local v1    # "networkLastModified":Ljava/util/Date;
    :cond_1
    const/4 v2, 0x0

    #@32
    return v2
.end method


# virtual methods
.method public close()Lcom/android/okhttp/Connection;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 589
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    #@3
    if-eqz v1, :cond_2

    #@5
    .line 591
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    #@7
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@a
    .line 597
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@c
    if-nez v1, :cond_3

    #@e
    .line 598
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@10
    if-eqz v1, :cond_1

    #@12
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@14
    invoke-virtual {v1}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    #@17
    move-result-object v1

    #@18
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    #@1b
    .line 599
    :cond_1
    iput-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@1d
    .line 600
    return-object v3

    #@1e
    .line 592
    :cond_2
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 593
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    #@24
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@27
    goto :goto_0

    #@28
    .line 604
    :cond_3
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@2a
    invoke-virtual {v1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@31
    .line 607
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@33
    if-eqz v1, :cond_4

    #@35
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@37
    if-eqz v1, :cond_4

    #@39
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@3b
    invoke-interface {v1}, Lcom/android/okhttp/internal/http/Transport;->canReuseConnection()Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_6

    #@41
    .line 614
    :cond_4
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@43
    if-eqz v1, :cond_5

    #@45
    sget-object v1, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@47
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@49
    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/Internal;->clearOwner(Lcom/android/okhttp/Connection;)Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_7

    #@4f
    .line 618
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@51
    .line 619
    .local v0, "result":Lcom/android/okhttp/Connection;
    iput-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@53
    .line 620
    return-object v0

    #@54
    .line 608
    .end local v0    # "result":Lcom/android/okhttp/Connection;
    :cond_6
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@56
    invoke-virtual {v1}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    #@59
    move-result-object v1

    #@5a
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    #@5d
    .line 609
    iput-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@5f
    .line 610
    return-object v3

    #@60
    .line 615
    :cond_7
    iput-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@62
    goto :goto_1
.end method

.method public disconnect()V
    .locals 3

    #@0
    .prologue
    .line 572
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 573
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@6
    invoke-interface {v2, p0}, Lcom/android/okhttp/internal/http/Transport;->disconnect(Lcom/android/okhttp/internal/http/HttpEngine;)V

    #@9
    .line 570
    :cond_0
    :goto_0
    return-void

    #@a
    .line 575
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@c
    .line 576
    .local v0, "connection":Lcom/android/okhttp/Connection;
    if-eqz v0, :cond_0

    #@e
    .line 577
    sget-object v2, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@10
    invoke-virtual {v2, v0, p0}, Lcom/android/okhttp/internal/Internal;->closeIfOwnedBy(Lcom/android/okhttp/Connection;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    goto :goto_0

    #@14
    .line 580
    .end local v0    # "connection":Lcom/android/okhttp/Connection;
    :catch_0
    move-exception v1

    #@15
    .local v1, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public followUpRequest()Lcom/android/okhttp/Request;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1053
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@3
    if-nez v6, :cond_0

    #@5
    new-instance v6, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v6

    #@b
    .line 1054
    :cond_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getRoute()Lcom/android/okhttp/Route;

    #@e
    move-result-object v6

    #@f
    if-eqz v6, :cond_1

    #@11
    .line 1055
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getRoute()Lcom/android/okhttp/Route;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v6}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    #@18
    move-result-object v4

    #@19
    .line 1057
    .local v4, "selectedProxy":Ljava/net/Proxy;
    :goto_0
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@1b
    invoke-virtual {v6}, Lcom/android/okhttp/Response;->code()I

    #@1e
    move-result v2

    #@1f
    .line 1059
    .local v2, "responseCode":I
    sparse-switch v2, :sswitch_data_0

    #@22
    .line 1113
    return-object v8

    #@23
    .line 1056
    .end local v2    # "responseCode":I
    .end local v4    # "selectedProxy":Ljava/net/Proxy;
    :cond_1
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@25
    invoke-virtual {v6}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    #@28
    move-result-object v4

    #@29
    .restart local v4    # "selectedProxy":Ljava/net/Proxy;
    goto :goto_0

    #@2a
    .line 1061
    .restart local v2    # "responseCode":I
    :sswitch_0
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@2d
    move-result-object v6

    #@2e
    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@30
    if-eq v6, v7, :cond_2

    #@32
    .line 1062
    new-instance v6, Ljava/net/ProtocolException;

    #@34
    const-string/jumbo v7, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    #@37
    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v6

    #@3b
    .line 1066
    :cond_2
    :sswitch_1
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@3d
    invoke-virtual {v6}, Lcom/android/okhttp/OkHttpClient;->getAuthenticator()Lcom/android/okhttp/Authenticator;

    #@40
    move-result-object v6

    #@41
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@43
    invoke-static {v6, v7, v4}, Lcom/android/okhttp/internal/http/OkHeaders;->processAuthHeader(Lcom/android/okhttp/Authenticator;Lcom/android/okhttp/Response;Ljava/net/Proxy;)Lcom/android/okhttp/Request;

    #@46
    move-result-object v6

    #@47
    return-object v6

    #@48
    .line 1072
    :sswitch_2
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@4a
    invoke-virtual {v6}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    const-string/jumbo v7, "GET"

    #@51
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v6

    #@55
    if-nez v6, :cond_3

    #@57
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@59
    invoke-virtual {v6}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@5c
    move-result-object v6

    #@5d
    const-string/jumbo v7, "HEAD"

    #@60
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v6

    #@64
    if-eqz v6, :cond_4

    #@66
    .line 1081
    :cond_3
    :sswitch_3
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@68
    invoke-virtual {v6}, Lcom/android/okhttp/OkHttpClient;->getFollowRedirects()Z

    #@6b
    move-result v6

    #@6c
    if-nez v6, :cond_5

    #@6e
    return-object v8

    #@6f
    .line 1073
    :cond_4
    return-object v8

    #@70
    .line 1083
    :cond_5
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@72
    const-string/jumbo v7, "Location"

    #@75
    invoke-virtual {v6, v7}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    .line 1084
    .local v0, "location":Ljava/lang/String;
    if-nez v0, :cond_6

    #@7b
    return-object v8

    #@7c
    .line 1085
    :cond_6
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@7e
    invoke-virtual {v6}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    #@81
    move-result-object v6

    #@82
    invoke-virtual {v6, v0}, Lcom/android/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    #@85
    move-result-object v5

    #@86
    .line 1088
    .local v5, "url":Lcom/android/okhttp/HttpUrl;
    if-nez v5, :cond_7

    #@88
    return-object v8

    #@89
    .line 1091
    :cond_7
    invoke-virtual {v5}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    #@8c
    move-result-object v6

    #@8d
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@8f
    invoke-virtual {v7}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    #@92
    move-result-object v7

    #@93
    invoke-virtual {v7}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    #@96
    move-result-object v7

    #@97
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v3

    #@9b
    .line 1092
    .local v3, "sameScheme":Z
    if-nez v3, :cond_8

    #@9d
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@9f
    invoke-virtual {v6}, Lcom/android/okhttp/OkHttpClient;->getFollowSslRedirects()Z

    #@a2
    move-result v6

    #@a3
    if-eqz v6, :cond_b

    #@a5
    .line 1095
    :cond_8
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@a7
    invoke-virtual {v6}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    #@aa
    move-result-object v1

    #@ab
    .line 1096
    .local v1, "requestBuilder":Lcom/android/okhttp/Request$Builder;
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@ad
    invoke-virtual {v6}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@b0
    move-result-object v6

    #@b1
    invoke-static {v6}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    #@b4
    move-result v6

    #@b5
    if-eqz v6, :cond_9

    #@b7
    .line 1097
    const-string/jumbo v6, "GET"

    #@ba
    invoke-virtual {v1, v6, v8}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    #@bd
    .line 1098
    const-string/jumbo v6, "Transfer-Encoding"

    #@c0
    invoke-virtual {v1, v6}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@c3
    .line 1099
    const-string/jumbo v6, "Content-Length"

    #@c6
    invoke-virtual {v1, v6}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@c9
    .line 1100
    const-string/jumbo v6, "Content-Type"

    #@cc
    invoke-virtual {v1, v6}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@cf
    .line 1106
    :cond_9
    invoke-virtual {p0, v5}, Lcom/android/okhttp/internal/http/HttpEngine;->sameConnection(Lcom/android/okhttp/HttpUrl;)Z

    #@d2
    move-result v6

    #@d3
    if-nez v6, :cond_a

    #@d5
    .line 1107
    const-string/jumbo v6, "Authorization"

    #@d8
    invoke-virtual {v1, v6}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@db
    .line 1110
    :cond_a
    invoke-virtual {v1, v5}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    #@de
    move-result-object v6

    #@df
    invoke-virtual {v6}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    #@e2
    move-result-object v6

    #@e3
    return-object v6

    #@e4
    .line 1092
    .end local v1    # "requestBuilder":Lcom/android/okhttp/Request$Builder;
    :cond_b
    return-object v8

    #@e5
    .line 1059
    nop

    #@e6
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBufferedRequestBody()Lcom/android/okhttp/okio/BufferedSink;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 372
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    #@3
    .line 373
    .local v1, "result":Lcom/android/okhttp/okio/BufferedSink;
    if-eqz v1, :cond_0

    #@5
    return-object v1

    #@6
    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequestBody()Lcom/android/okhttp/okio/Sink;

    #@9
    move-result-object v0

    #@a
    .line 375
    .local v0, "requestBody":Lcom/android/okhttp/okio/Sink;
    if-eqz v0, :cond_1

    #@c
    .line 376
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    #@f
    move-result-object v2

    #@10
    iput-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    #@12
    .line 375
    :cond_1
    return-object v2
.end method

.method public getConnection()Lcom/android/okhttp/Connection;
    .locals 1

    #@0
    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@2
    return-object v0
.end method

.method public getRequest()Lcom/android/okhttp/Request;
    .locals 1

    #@0
    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@2
    return-object v0
.end method

.method public getRequestBody()Lcom/android/okhttp/okio/Sink;
    .locals 1

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    #@c
    return-object v0
.end method

.method public getResponse()Lcom/android/okhttp/Response;
    .locals 1

    #@0
    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@c
    return-object v0
.end method

.method public getRoute()Lcom/android/okhttp/Route;
    .locals 1

    #@0
    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->route:Lcom/android/okhttp/Route;

    #@2
    return-object v0
.end method

.method public hasResponse()Z
    .locals 1

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

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

.method permitsRequestBody()Z
    .locals 1

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public readResponse()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    .line 732
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 733
    return-void

    #@7
    .line 735
    :cond_0
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@9
    if-nez v4, :cond_1

    #@b
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    #@d
    if-nez v4, :cond_1

    #@f
    .line 736
    new-instance v4, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v5, "call sendRequest() first!"

    #@14
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v4

    #@18
    .line 738
    :cond_1
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@1a
    if-nez v4, :cond_2

    #@1c
    .line 739
    return-void

    #@1d
    .line 744
    :cond_2
    iget-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    #@1f
    if-eqz v4, :cond_3

    #@21
    .line 745
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@23
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@25
    invoke-interface {v4, v5}, Lcom/android/okhttp/internal/http/Transport;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    #@28
    .line 746
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/android/okhttp/Response;

    #@2b
    move-result-object v2

    #@2c
    .line 785
    .local v2, "networkResponse":Lcom/android/okhttp/Response;
    :goto_0
    invoke-virtual {v2}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {p0, v4}, Lcom/android/okhttp/internal/http/HttpEngine;->receiveHeaders(Lcom/android/okhttp/Headers;)V

    #@33
    .line 788
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    #@35
    if-eqz v4, :cond_b

    #@37
    .line 789
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    #@39
    invoke-static {v4, v2}, Lcom/android/okhttp/internal/http/HttpEngine;->validate(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)Z

    #@3c
    move-result v4

    #@3d
    if-eqz v4, :cond_a

    #@3f
    .line 790
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    #@41
    invoke-virtual {v4}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    #@44
    move-result-object v4

    #@45
    .line 791
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@47
    .line 790
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    #@4a
    move-result-object v4

    #@4b
    .line 792
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    #@4d
    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@50
    move-result-object v5

    #@51
    .line 790
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    #@54
    move-result-object v4

    #@55
    .line 793
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    #@57
    invoke-virtual {v5}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v2}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@5e
    move-result-object v6

    #@5f
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/http/HttpEngine;->combine(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;

    #@62
    move-result-object v5

    #@63
    .line 790
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    #@66
    move-result-object v4

    #@67
    .line 794
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    #@69
    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@6c
    move-result-object v5

    #@6d
    .line 790
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    #@70
    move-result-object v4

    #@71
    .line 795
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@74
    move-result-object v5

    #@75
    .line 790
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v4}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    #@7c
    move-result-object v4

    #@7d
    iput-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@7f
    .line 797
    invoke-virtual {v2}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v4}, Lcom/android/okhttp/ResponseBody;->close()V

    #@86
    .line 798
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseConnection()V

    #@89
    .line 802
    sget-object v4, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@8b
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@8d
    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    #@90
    move-result-object v3

    #@91
    .line 803
    .local v3, "responseCache":Lcom/android/okhttp/internal/InternalCache;
    invoke-interface {v3}, Lcom/android/okhttp/internal/InternalCache;->trackConditionalCacheHit()V

    #@94
    .line 804
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    #@96
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@98
    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@9b
    move-result-object v5

    #@9c
    invoke-interface {v3, v4, v5}, Lcom/android/okhttp/internal/InternalCache;->update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V

    #@9f
    .line 805
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@a1
    invoke-direct {p0, v4}, Lcom/android/okhttp/internal/http/HttpEngine;->unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@a4
    move-result-object v4

    #@a5
    iput-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@a7
    .line 806
    return-void

    #@a8
    .line 748
    .end local v2    # "networkResponse":Lcom/android/okhttp/Response;
    .end local v3    # "responseCache":Lcom/android/okhttp/internal/InternalCache;
    :cond_3
    iget-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    #@aa
    if-nez v4, :cond_4

    #@ac
    .line 749
    new-instance v4, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;

    #@ae
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@b0
    const/4 v6, 0x0

    #@b1
    invoke-direct {v4, p0, v6, v5}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;ILcom/android/okhttp/Request;)V

    #@b4
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@b6
    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    #@b9
    move-result-object v2

    #@ba
    .restart local v2    # "networkResponse":Lcom/android/okhttp/Response;
    goto/16 :goto_0

    #@bc
    .line 753
    .end local v2    # "networkResponse":Lcom/android/okhttp/Response;
    :cond_4
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    #@be
    if-eqz v4, :cond_5

    #@c0
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    #@c2
    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    #@c5
    move-result-object v4

    #@c6
    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@c9
    move-result-wide v4

    #@ca
    const-wide/16 v6, 0x0

    #@cc
    cmp-long v4, v4, v6

    #@ce
    if-lez v4, :cond_5

    #@d0
    .line 754
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    #@d2
    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->emit()Lcom/android/okhttp/okio/BufferedSink;

    #@d5
    .line 758
    :cond_5
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    #@d7
    cmp-long v4, v4, v8

    #@d9
    if-nez v4, :cond_7

    #@db
    .line 759
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@dd
    invoke-static {v4}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Request;)J

    #@e0
    move-result-wide v4

    #@e1
    cmp-long v4, v4, v8

    #@e3
    if-nez v4, :cond_6

    #@e5
    .line 760
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    #@e7
    instance-of v4, v4, Lcom/android/okhttp/internal/http/RetryableSink;

    #@e9
    .line 759
    if-eqz v4, :cond_6

    #@eb
    .line 761
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    #@ed
    check-cast v4, Lcom/android/okhttp/internal/http/RetryableSink;

    #@ef
    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/RetryableSink;->contentLength()J

    #@f2
    move-result-wide v0

    #@f3
    .line 762
    .local v0, "contentLength":J
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@f5
    invoke-virtual {v4}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    #@f8
    move-result-object v4

    #@f9
    .line 763
    const-string/jumbo v5, "Content-Length"

    #@fc
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@ff
    move-result-object v6

    #@100
    .line 762
    invoke-virtual {v4, v5, v6}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@103
    move-result-object v4

    #@104
    invoke-virtual {v4}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    #@107
    move-result-object v4

    #@108
    iput-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@10a
    .line 766
    .end local v0    # "contentLength":J
    :cond_6
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@10c
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@10e
    invoke-interface {v4, v5}, Lcom/android/okhttp/internal/http/Transport;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    #@111
    .line 770
    :cond_7
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    #@113
    if-eqz v4, :cond_8

    #@115
    .line 771
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    #@117
    if-eqz v4, :cond_9

    #@119
    .line 773
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    #@11b
    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    #@11e
    .line 777
    :goto_1
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    #@120
    instance-of v4, v4, Lcom/android/okhttp/internal/http/RetryableSink;

    #@122
    if-eqz v4, :cond_8

    #@124
    .line 778
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@126
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    #@128
    check-cast v4, Lcom/android/okhttp/internal/http/RetryableSink;

    #@12a
    invoke-interface {v5, v4}, Lcom/android/okhttp/internal/http/Transport;->writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V

    #@12d
    .line 782
    :cond_8
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/android/okhttp/Response;

    #@130
    move-result-object v2

    #@131
    .restart local v2    # "networkResponse":Lcom/android/okhttp/Response;
    goto/16 :goto_0

    #@133
    .line 775
    .end local v2    # "networkResponse":Lcom/android/okhttp/Response;
    :cond_9
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    #@135
    invoke-interface {v4}, Lcom/android/okhttp/okio/Sink;->close()V

    #@138
    goto :goto_1

    #@139
    .line 808
    .restart local v2    # "networkResponse":Lcom/android/okhttp/Response;
    :cond_a
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    #@13b
    invoke-virtual {v4}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    #@13e
    move-result-object v4

    #@13f
    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@142
    .line 812
    :cond_b
    invoke-virtual {v2}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    #@145
    move-result-object v4

    #@146
    .line 813
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@148
    .line 812
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    #@14b
    move-result-object v4

    #@14c
    .line 814
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    #@14e
    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@151
    move-result-object v5

    #@152
    .line 812
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    #@155
    move-result-object v4

    #@156
    .line 815
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    #@158
    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@15b
    move-result-object v5

    #@15c
    .line 812
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    #@15f
    move-result-object v4

    #@160
    .line 816
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@163
    move-result-object v5

    #@164
    .line 812
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    #@167
    move-result-object v4

    #@168
    invoke-virtual {v4}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    #@16b
    move-result-object v4

    #@16c
    iput-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@16e
    .line 819
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@170
    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpEngine;->hasBody(Lcom/android/okhttp/Response;)Z

    #@173
    move-result v4

    #@174
    if-eqz v4, :cond_c

    #@176
    .line 820
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->maybeCache()V

    #@179
    .line 821
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->storeRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    #@17b
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@17d
    invoke-direct {p0, v4, v5}, Lcom/android/okhttp/internal/http/HttpEngine;->cacheWritingResponse(Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@180
    move-result-object v4

    #@181
    invoke-direct {p0, v4}, Lcom/android/okhttp/internal/http/HttpEngine;->unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@184
    move-result-object v4

    #@185
    iput-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@187
    .line 731
    :cond_c
    return-void
.end method

.method public receiveHeaders(Lcom/android/okhttp/Headers;)V
    .locals 3
    .param p1, "headers"    # Lcom/android/okhttp/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1041
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@3
    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    #@6
    move-result-object v0

    #@7
    .line 1042
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_0

    #@9
    .line 1043
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@b
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    #@e
    move-result-object v1

    #@f
    invoke-static {p1, v2}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    #@16
    .line 1040
    :cond_0
    return-void
.end method

.method public recover(Lcom/android/okhttp/internal/http/RouteException;)Lcom/android/okhttp/internal/http/HttpEngine;
    .locals 10
    .param p1, "e"    # Lcom/android/okhttp/internal/http/RouteException;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 405
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 406
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    #@b
    invoke-virtual {p1}, Lcom/android/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    #@e
    move-result-object v1

    #@f
    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/http/HttpEngine;->connectFailed(Lcom/android/okhttp/internal/http/RouteSelector;Ljava/io/IOException;)V

    #@12
    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    #@14
    if-nez v0, :cond_2

    #@16
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@18
    if-nez v0, :cond_2

    #@1a
    .line 412
    :cond_1
    return-object v2

    #@1b
    .line 410
    :cond_2
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    #@1d
    if-eqz v0, :cond_3

    #@1f
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    #@21
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNext()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 411
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/HttpEngine;->isRecoverable(Lcom/android/okhttp/internal/http/RouteException;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_1

    #@2d
    .line 415
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/Connection;

    #@30
    move-result-object v6

    #@31
    .line 418
    .local v6, "connection":Lcom/android/okhttp/Connection;
    new-instance v0, Lcom/android/okhttp/internal/http/HttpEngine;

    #@33
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@35
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@37
    iget-boolean v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    #@39
    iget-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    #@3b
    .line 419
    iget-boolean v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    #@3d
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    #@3f
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    #@41
    check-cast v8, Lcom/android/okhttp/internal/http/RetryableSink;

    #@43
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    #@45
    .line 418
    invoke-direct/range {v0 .. v9}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RouteSelector;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    #@48
    return-object v0
.end method

.method public recover(Ljava/io/IOException;)Lcom/android/okhttp/internal/http/HttpEngine;
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    #@2
    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/internal/http/HttpEngine;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/internal/http/HttpEngine;
    .locals 11
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestBodyOut"    # Lcom/android/okhttp/okio/Sink;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 472
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 473
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    #@b
    invoke-direct {p0, v0, p1}, Lcom/android/okhttp/internal/http/HttpEngine;->connectFailed(Lcom/android/okhttp/internal/http/RouteSelector;Ljava/io/IOException;)V

    #@e
    .line 476
    :cond_0
    if-eqz p2, :cond_2

    #@10
    instance-of v10, p2, Lcom/android/okhttp/internal/http/RetryableSink;

    #@12
    .line 477
    :goto_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    #@14
    if-nez v0, :cond_3

    #@16
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@18
    if-nez v0, :cond_3

    #@1a
    .line 481
    :cond_1
    return-object v1

    #@1b
    .line 476
    :cond_2
    const/4 v10, 0x1

    #@1c
    .local v10, "canRetryRequestBody":Z
    goto :goto_0

    #@1d
    .line 478
    .end local v10    # "canRetryRequestBody":Z
    :cond_3
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    #@1f
    if-eqz v0, :cond_4

    #@21
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    #@23
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNext()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 479
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/HttpEngine;->isRecoverable(Ljava/io/IOException;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_1

    #@2f
    .line 480
    if-eqz v10, :cond_1

    #@31
    .line 484
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/Connection;

    #@34
    move-result-object v6

    #@35
    .line 487
    .local v6, "connection":Lcom/android/okhttp/Connection;
    new-instance v0, Lcom/android/okhttp/internal/http/HttpEngine;

    #@37
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@39
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@3b
    iget-boolean v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    #@3d
    iget-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    #@3f
    .line 488
    iget-boolean v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    #@41
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/android/okhttp/internal/http/RouteSelector;

    #@43
    move-object v8, p2

    #@44
    check-cast v8, Lcom/android/okhttp/internal/http/RetryableSink;

    #@46
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    #@48
    .line 487
    invoke-direct/range {v0 .. v9}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/RouteSelector;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    #@4b
    return-object v0
.end method

.method public releaseConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 555
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 556
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@b
    invoke-interface {v0}, Lcom/android/okhttp/internal/http/Transport;->releaseConnectionOnIdle()V

    #@e
    .line 558
    :cond_0
    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@10
    .line 554
    return-void
.end method

.method public sameConnection(Lcom/android/okhttp/HttpUrl;)Z
    .locals 3
    .param p1, "followUp"    # Lcom/android/okhttp/HttpUrl;

    #@0
    .prologue
    .line 1122
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@2
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    #@5
    move-result-object v0

    #@6
    .line 1123
    .local v0, "url":Lcom/android/okhttp/HttpUrl;
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 1124
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->port()I

    #@17
    move-result v1

    #@18
    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->port()I

    #@1b
    move-result v2

    #@1c
    if-ne v1, v2, :cond_0

    #@1e
    .line 1125
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v1

    #@2a
    .line 1123
    :goto_0
    return v1

    #@2b
    :cond_0
    const/4 v1, 0x0

    #@2c
    goto :goto_0
.end method

.method public sendRequest()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RequestException;,
            Lcom/android/okhttp/internal/http/RouteException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 220
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    #@3
    if-eqz v7, :cond_0

    #@5
    return-void

    #@6
    .line 221
    :cond_0
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@8
    if-eqz v7, :cond_1

    #@a
    new-instance v7, Ljava/lang/IllegalStateException;

    #@c
    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    #@f
    throw v7

    #@10
    .line 223
    :cond_1
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@12
    invoke-direct {p0, v7}, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;

    #@15
    move-result-object v1

    #@16
    .line 225
    .local v1, "request":Lcom/android/okhttp/Request;
    sget-object v7, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@18
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@1a
    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    #@1d
    move-result-object v6

    #@1e
    .line 226
    .local v6, "responseCache":Lcom/android/okhttp/internal/InternalCache;
    if-eqz v6, :cond_5

    #@20
    .line 227
    invoke-interface {v6, v1}, Lcom/android/okhttp/internal/InternalCache;->get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    #@23
    move-result-object v0

    #@24
    .line 230
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@27
    move-result-wide v4

    #@28
    .line 231
    .local v4, "now":J
    new-instance v7, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;

    #@2a
    invoke-direct {v7, v4, v5, v1, v0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;-><init>(JLcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V

    #@2d
    invoke-virtual {v7}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->get()Lcom/android/okhttp/internal/http/CacheStrategy;

    #@30
    move-result-object v7

    #@31
    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    #@33
    .line 232
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    #@35
    iget-object v7, v7, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    #@37
    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@39
    .line 233
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    #@3b
    iget-object v7, v7, Lcom/android/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/android/okhttp/Response;

    #@3d
    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    #@3f
    .line 235
    if-eqz v6, :cond_2

    #@41
    .line 236
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    #@43
    invoke-interface {v6, v7}, Lcom/android/okhttp/internal/InternalCache;->trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V

    #@46
    .line 239
    :cond_2
    if-eqz v0, :cond_3

    #@48
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    #@4a
    if-nez v7, :cond_3

    #@4c
    .line 240
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    #@4f
    move-result-object v7

    #@50
    invoke-static {v7}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@53
    .line 243
    :cond_3
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@55
    if-eqz v7, :cond_a

    #@57
    .line 245
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@59
    if-nez v7, :cond_4

    #@5b
    .line 246
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->connect()V

    #@5e
    .line 249
    :cond_4
    sget-object v7, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@60
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@62
    invoke-virtual {v7, v8, p0}, Lcom/android/okhttp/internal/Internal;->newTransport(Lcom/android/okhttp/Connection;Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/Transport;

    #@65
    move-result-object v7

    #@66
    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@68
    .line 255
    iget-boolean v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    #@6a
    if-eqz v7, :cond_7

    #@6c
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->permitsRequestBody()Z

    #@6f
    move-result v7

    #@70
    if-eqz v7, :cond_7

    #@72
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    #@74
    if-nez v7, :cond_7

    #@76
    .line 256
    invoke-static {v1}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Request;)J

    #@79
    move-result-wide v2

    #@7a
    .line 257
    .local v2, "contentLength":J
    iget-boolean v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    #@7c
    if-eqz v7, :cond_9

    #@7e
    .line 258
    const-wide/32 v8, 0x7fffffff

    #@81
    cmp-long v7, v2, v8

    #@83
    if-lez v7, :cond_6

    #@85
    .line 259
    new-instance v7, Ljava/lang/IllegalStateException;

    #@87
    const-string/jumbo v8, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    #@8a
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v7

    #@8e
    .line 228
    .end local v2    # "contentLength":J
    .end local v4    # "now":J
    :cond_5
    const/4 v0, 0x0

    #@8f
    .local v0, "cacheCandidate":Lcom/android/okhttp/Response;
    goto :goto_0

    #@90
    .line 263
    .end local v0    # "cacheCandidate":Lcom/android/okhttp/Response;
    .restart local v2    # "contentLength":J
    .restart local v4    # "now":J
    :cond_6
    const-wide/16 v8, -0x1

    #@92
    cmp-long v7, v2, v8

    #@94
    if-eqz v7, :cond_8

    #@96
    .line 265
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@98
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@9a
    invoke-interface {v7, v8}, Lcom/android/okhttp/internal/http/Transport;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    #@9d
    .line 266
    new-instance v7, Lcom/android/okhttp/internal/http/RetryableSink;

    #@9f
    long-to-int v8, v2

    #@a0
    invoke-direct {v7, v8}, Lcom/android/okhttp/internal/http/RetryableSink;-><init>(I)V

    #@a3
    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    #@a5
    .line 219
    .end local v2    # "contentLength":J
    :cond_7
    :goto_1
    return-void

    #@a6
    .line 271
    .restart local v2    # "contentLength":J
    :cond_8
    new-instance v7, Lcom/android/okhttp/internal/http/RetryableSink;

    #@a8
    invoke-direct {v7}, Lcom/android/okhttp/internal/http/RetryableSink;-><init>()V

    #@ab
    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    #@ad
    goto :goto_1

    #@ae
    .line 274
    :cond_9
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@b0
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@b2
    invoke-interface {v7, v8}, Lcom/android/okhttp/internal/http/Transport;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    #@b5
    .line 275
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transport:Lcom/android/okhttp/internal/http/Transport;

    #@b7
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    #@b9
    invoke-interface {v7, v8, v2, v3}, Lcom/android/okhttp/internal/http/Transport;->createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;

    #@bc
    move-result-object v7

    #@bd
    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    #@bf
    goto :goto_1

    #@c0
    .line 281
    .end local v2    # "contentLength":J
    :cond_a
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@c2
    if-eqz v7, :cond_b

    #@c4
    .line 282
    sget-object v7, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@c6
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@c8
    invoke-virtual {v8}, Lcom/android/okhttp/OkHttpClient;->getConnectionPool()Lcom/android/okhttp/ConnectionPool;

    #@cb
    move-result-object v8

    #@cc
    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@ce
    invoke-virtual {v7, v8, v9}, Lcom/android/okhttp/internal/Internal;->recycle(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Connection;)V

    #@d1
    .line 283
    iput-object v10, p0, Lcom/android/okhttp/internal/http/HttpEngine;->connection:Lcom/android/okhttp/Connection;

    #@d3
    .line 286
    :cond_b
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    #@d5
    if-eqz v7, :cond_c

    #@d7
    .line 288
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    #@d9
    invoke-virtual {v7}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    #@dc
    move-result-object v7

    #@dd
    .line 289
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@df
    .line 288
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    #@e2
    move-result-object v7

    #@e3
    .line 290
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    #@e5
    invoke-static {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@e8
    move-result-object v8

    #@e9
    .line 288
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    #@ec
    move-result-object v7

    #@ed
    .line 291
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    #@ef
    invoke-static {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@f2
    move-result-object v8

    #@f3
    .line 288
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    #@f6
    move-result-object v7

    #@f7
    invoke-virtual {v7}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    #@fa
    move-result-object v7

    #@fb
    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@fd
    .line 305
    :goto_2
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@ff
    invoke-direct {p0, v7}, Lcom/android/okhttp/internal/http/HttpEngine;->unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@102
    move-result-object v7

    #@103
    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@105
    goto :goto_1

    #@106
    .line 295
    :cond_c
    new-instance v7, Lcom/android/okhttp/Response$Builder;

    #@108
    invoke-direct {v7}, Lcom/android/okhttp/Response$Builder;-><init>()V

    #@10b
    .line 296
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    #@10d
    .line 295
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    #@110
    move-result-object v7

    #@111
    .line 297
    iget-object v8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    #@113
    invoke-static {v8}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    #@116
    move-result-object v8

    #@117
    .line 295
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    #@11a
    move-result-object v7

    #@11b
    .line 298
    sget-object v8, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    #@11d
    .line 295
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    #@120
    move-result-object v7

    #@121
    .line 299
    const/16 v8, 0x1f8

    #@123
    .line 295
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    #@126
    move-result-object v7

    #@127
    .line 300
    const-string/jumbo v8, "Unsatisfiable Request (only-if-cached)"

    #@12a
    .line 295
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    #@12d
    move-result-object v7

    #@12e
    .line 301
    sget-object v8, Lcom/android/okhttp/internal/http/HttpEngine;->EMPTY_BODY:Lcom/android/okhttp/ResponseBody;

    #@130
    .line 295
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    #@133
    move-result-object v7

    #@134
    invoke-virtual {v7}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    #@137
    move-result-object v7

    #@138
    iput-object v7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    #@13a
    goto :goto_2
.end method

.method public writingRequestHeaders()V
    .locals 4

    #@0
    .prologue
    .line 357
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@d
    throw v0

    #@e
    .line 358
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    #@14
    .line 356
    return-void
.end method
