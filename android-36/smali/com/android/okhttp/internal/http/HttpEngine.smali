.class public final Lcom/android/okhttp/internal/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
    }
.end annotation


# static fields
.field private static final greylist-max-o EMPTY_BODY:Lcom/android/okhttp/ResponseBody;

.field public static final greylist-max-o MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field public final greylist-max-o bufferRequestBody:Z

.field private greylist-max-o bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

.field private greylist-max-o cacheResponse:Lcom/android/okhttp/Response;

.field private greylist-max-o cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

.field private final greylist-max-o callerWritesRequestBody:Z

.field final greylist-max-o client:Lcom/android/okhttp/OkHttpClient;

.field private final greylist-max-o forWebSocket:Z

.field private greylist httpStream:Lcom/android/okhttp/internal/http/HttpStream;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private greylist networkRequest:Lcom/android/okhttp/Request;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final greylist priorResponse:Lcom/android/okhttp/Response;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private greylist-max-o requestBodyOut:Lcom/android/okhttp/okio/Sink;

.field greylist sentRequestMillis:J
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private greylist-max-o storeRequest:Lcom/android/okhttp/internal/http/CacheRequest;

.field public final greylist-max-o streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

.field private greylist-max-o transparentGzip:Z

.field private final greylist-max-o userRequest:Lcom/android/okhttp/Request;

.field private greylist userResponse:Lcom/android/okhttp/Response;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Lcom/android/okhttp/internal/http/HttpEngine$1;

    invoke-direct {v0}, Lcom/android/okhttp/internal/http/HttpEngine$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/http/HttpEngine;->EMPTY_BODY:Lcom/android/okhttp/ResponseBody;

    return-void
.end method

.method public constructor greylist-max-o <init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V
    .registers 11

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 117
    iput-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 182
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    .line 183
    iput-object p2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 184
    iput-boolean p3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    .line 185
    iput-boolean p4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    .line 186
    iput-boolean p5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    if-eqz p6, :cond_14

    goto :goto_21

    .line 189
    :cond_14
    new-instance p6, Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->getConnectionPool()Lcom/android/okhttp/ConnectionPool;

    move-result-object p3

    invoke-static {p1, p2}, Lcom/android/okhttp/internal/http/HttpEngine;->createAddress(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Address;

    move-result-object p1

    invoke-direct {p6, p3, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;-><init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Address;)V

    :goto_21
    iput-object p6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 190
    iput-object p7, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    .line 191
    iput-object p8, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/internal/http/HttpStream;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    return-object p0
.end method

.method static synthetic blacklist access$102(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    return-object p1
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/Response;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/android/okhttp/Response;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o cacheWritingResponse(Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_9

    .line 780
    :cond_3
    invoke-interface {p1}, Lcom/android/okhttp/internal/http/CacheRequest;->body()Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-object p2

    .line 783
    :cond_a
    invoke-virtual {p2}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v1

    .line 784
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    .line 786
    new-instance v2, Lcom/android/okhttp/internal/http/HttpEngine$2;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/android/okhttp/internal/http/HttpEngine$2;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/okio/BufferedSink;)V

    .line 828
    invoke-virtual {p2}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object p0

    new-instance p1, Lcom/android/okhttp/internal/http/RealResponseBody;

    .line 829
    invoke-virtual {p2}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object p2

    invoke-static {v2}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/android/okhttp/internal/http/RealResponseBody;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V

    invoke-virtual {p0, p1}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object p0

    .line 830
    invoke-virtual {p0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o combine(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 862
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 864
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_38

    .line 865
    invoke-virtual {p0, v3}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 866
    invoke-virtual {p0, v3}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    .line 867
    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    goto :goto_35

    .line 870
    :cond_26
    invoke-static {v4}, Lcom/android/okhttp/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-virtual {p1, v4}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_35

    .line 871
    :cond_32
    invoke-virtual {v0, v4, v5}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 875
    :cond_38
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->size()I

    move-result p0

    :goto_3c
    if-ge v2, p0, :cond_5b

    .line 876
    invoke-virtual {p1, v2}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    .line 877
    const-string v3, "Content-Length"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    goto :goto_58

    .line 880
    :cond_4b
    invoke-static {v1}, Lcom/android/okhttp/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 881
    invoke-virtual {p1, v2}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    :cond_58
    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 885
    :cond_5b
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o connect()Lcom/android/okhttp/internal/http/HttpStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;,
            Lcom/android/okhttp/internal/http/RequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 289
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getConnectTimeout()I

    move-result v2

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    .line 290
    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v3

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getWriteTimeout()I

    move-result v4

    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    .line 291
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result v5

    .line 289
    invoke-virtual/range {v1 .. v6}, Lcom/android/okhttp/internal/http/StreamAllocation;->newStream(IIIZZ)Lcom/android/okhttp/internal/http/HttpStream;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o createAddress(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;)Lcom/android/okhttp/Address;
    .registers 16

    .line 989
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 990
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 991
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 992
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getCertificatePinner()Lcom/android/okhttp/CertificatePinner;

    move-result-object v2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    goto :goto_1a

    :cond_16
    const/4 v0, 0x0

    move-object v6, v0

    move-object v7, v6

    move-object v8, v7

    .line 995
    :goto_1a
    new-instance v1, Lcom/android/okhttp/Address;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getDns()Lcom/android/okhttp/Dns;

    move-result-object v4

    .line 996
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v5

    .line 997
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getAuthenticator()Lcom/android/okhttp/Authenticator;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getProtocols()Ljava/util/List;

    move-result-object v11

    .line 998
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getConnectionSpecs()Ljava/util/List;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v13

    invoke-direct/range {v1 .. v13}, Lcom/android/okhttp/Address;-><init>(Ljava/lang/String;ILcom/android/okhttp/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/android/okhttp/CertificatePinner;Lcom/android/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method public static greylist-max-o hasBody(Lcom/android/okhttp/Response;)Z
    .registers 9

    .line 501
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    return v1

    .line 505
    :cond_12
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1f

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_28

    :cond_1f
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_28

    const/16 v2, 0x130

    if-eq v0, v2, :cond_28

    return v3

    .line 515
    :cond_28
    invoke-static {p0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_42

    const-string v0, "Transfer-Encoding"

    .line 516
    invoke-virtual {p0, v0}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_42

    :cond_41
    return v1

    :cond_42
    :goto_42
    return v3
.end method

.method private greylist-max-o maybeCache()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_26

    .line 403
    :cond_b
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-static {v1, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;->isCacheable(Lcom/android/okhttp/Response;Lcom/android/okhttp/Request;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 404
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 406
    :try_start_21
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v0, p0}, Lcom/android/okhttp/internal/InternalCache;->remove(Lcom/android/okhttp/Request;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    :goto_26
    return-void

    .line 415
    :cond_27
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/InternalCache;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->storeRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    return-void
.end method

.method private greylist networkRequest(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;
    .registers 6
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 533
    const-string v1, "Host"

    invoke-virtual {p1, v1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    .line 534
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 537
    :cond_18
    const-string v1, "Connection"

    invoke-virtual {p1, v1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_25

    .line 538
    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 541
    :cond_25
    const-string v1, "Accept-Encoding"

    invoke-virtual {p1, v1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_35

    const/4 v2, 0x1

    .line 542
    iput-boolean v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    .line 543
    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 546
    :cond_35
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 551
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 553
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 556
    invoke-static {v0, p0}, Lcom/android/okhttp/internal/http/OkHeaders;->addCookies(Lcom/android/okhttp/Request$Builder;Ljava/util/Map;)V

    .line 559
    :cond_55
    const-string p0, "User-Agent"

    invoke-virtual {p1, p0}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_64

    .line 560
    invoke-static {}, Lcom/android/okhttp/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 563
    :cond_64
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o readNetworkResponse()Lcom/android/okhttp/Response;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-interface {v0}, Lcom/android/okhttp/internal/http/HttpStream;->finishRequest()V

    .line 750
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-interface {v0}, Lcom/android/okhttp/internal/http/HttpStream;->readResponseHeaders()Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    .line 751
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 752
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/io/RealConnection;->getHandshake()Lcom/android/okhttp/Handshake;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 753
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    .line 754
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    .line 755
    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v0

    .line 757
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    if-nez v1, :cond_53

    .line 758
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    .line 759
    invoke-interface {v2, v0}, Lcom/android/okhttp/internal/http/HttpStream;->openResponseBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v0

    .line 763
    :cond_53
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v1

    const-string v2, "Connection"

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "close"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 764
    invoke-virtual {v0, v2}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    goto :goto_71

    :cond_70
    return-object v0

    .line 765
    :cond_71
    :goto_71
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->noNewStreams()V

    return-object v0
.end method

.method private static greylist-max-o stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 2

    if-eqz p0, :cond_15

    .line 295
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 296
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object p0

    :cond_15
    return-object p0
.end method

.method private greylist-max-o unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    if-eqz v0, :cond_59

    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "gzip"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_59

    .line 480
    :cond_15
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object p0

    if-nez p0, :cond_1c

    return-object p1

    .line 484
    :cond_1c
    new-instance p0, Lcom/android/okhttp/okio/GzipSource;

    invoke-virtual {p1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/okhttp/okio/GzipSource;-><init>(Lcom/android/okhttp/okio/Source;)V

    .line 485
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v1

    .line 486
    invoke-virtual {v1, v0}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    const-string v1, "Content-Length"

    .line 487
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v0

    .line 489
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object p1

    .line 490
    invoke-virtual {p1, v0}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/okhttp/internal/http/RealResponseBody;

    .line 491
    invoke-static {p0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/android/okhttp/internal/http/RealResponseBody;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V

    invoke-virtual {p1, v1}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object p0

    .line 492
    invoke-virtual {p0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object p0

    return-object p0

    :cond_59
    :goto_59
    return-object p1
.end method

.method private static greylist-max-o validate(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)Z
    .registers 5

    .line 838
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    const/16 v1, 0x130

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    return v2

    .line 845
    :cond_a
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object p0

    const-string v0, "Last-Modified"

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 847
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 849
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_2d

    return v2

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .registers 1

    .line 437
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->cancel()V

    return-void
.end method

.method public greylist-max-o close()Lcom/android/okhttp/internal/http/StreamAllocation;
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    if-eqz v0, :cond_8

    .line 447
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_f

    .line 448
    :cond_8
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    if-eqz v0, :cond_f

    .line 449
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 452
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_1b

    .line 453
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_20

    .line 456
    :cond_1b
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connectionFailed()V

    .line 459
    :goto_20
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    return-object p0
.end method

.method public greylist-max-o followUpRequest()Lcom/android/okhttp/Request;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 901
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_e9

    .line 902
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 904
    invoke-interface {v0}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    if-eqz v0, :cond_1a

    .line 907
    invoke-virtual {v0}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_20

    .line 908
    :cond_1a
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    .line 909
    :goto_20
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v2}, Lcom/android/okhttp/Response;->code()I

    move-result v2

    .line 911
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v3}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x133

    .line 912
    const-string v5, "GET"

    if-eq v2, v4, :cond_60

    const/16 v4, 0x134

    if-eq v2, v4, :cond_60

    const/16 v4, 0x191

    if-eq v2, v4, :cond_53

    const/16 v4, 0x197

    if-eq v2, v4, :cond_42

    packed-switch v2, :pswitch_data_f0

    return-object v1

    .line 914
    :cond_42
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_4b

    goto :goto_53

    .line 915
    :cond_4b
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 919
    :cond_53
    :goto_53
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getAuthenticator()Lcom/android/okhttp/Authenticator;

    move-result-object v1

    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-static {v1, p0, v0}, Lcom/android/okhttp/internal/http/OkHeaders;->processAuthHeader(Lcom/android/okhttp/Authenticator;Lcom/android/okhttp/Response;Ljava/net/Proxy;)Lcom/android/okhttp/Request;

    move-result-object p0

    return-object p0

    .line 925
    :cond_60
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    return-object v1

    .line 934
    :cond_6f
    :pswitch_6f
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getFollowRedirects()Z

    move-result v0

    if-nez v0, :cond_78

    return-object v1

    .line 936
    :cond_78
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_83

    return-object v1

    .line 938
    :cond_83
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_90

    return-object v1

    .line 944
    :cond_90
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v4}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    .line 945
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->getFollowSslRedirects()Z

    move-result v2

    if-nez v2, :cond_ad

    return-object v1

    .line 948
    :cond_ad
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v2

    .line 949
    invoke-static {v3}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 950
    invoke-static {v3}, Lcom/android/okhttp/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 951
    invoke-virtual {v2, v5, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    goto :goto_c6

    .line 953
    :cond_c3
    invoke-virtual {v2, v3, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    .line 955
    :goto_c6
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v2, v1}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 956
    const-string v1, "Content-Length"

    invoke-virtual {v2, v1}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 957
    const-string v1, "Content-Type"

    invoke-virtual {v2, v1}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 963
    :cond_d5
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->sameConnection(Lcom/android/okhttp/HttpUrl;)Z

    move-result p0

    if-nez p0, :cond_e0

    .line 964
    const-string p0, "Authorization"

    invoke-virtual {v2, p0}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 967
    :cond_e0
    invoke-virtual {v2, v0}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object p0

    return-object p0

    .line 901
    :cond_e9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    nop

    :pswitch_data_f0
    .packed-switch 0x12c
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
    .end packed-switch
.end method

.method public greylist-max-o getBufferedRequestBody()Lcom/android/okhttp/okio/BufferedSink;
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    if-eqz v0, :cond_5

    return-object v0

    .line 324
    :cond_5
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequestBody()Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 326
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    return-object v0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getConnection()Lcom/android/okhttp/Connection;
    .registers 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 348
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->connection()Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o getRequest()Lcom/android/okhttp/Request;
    .registers 1

    .line 336
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    return-object p0
.end method

.method public greylist-max-o getRequestBody()Lcom/android/okhttp/okio/Sink;
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    if-eqz v0, :cond_7

    .line 318
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    return-object p0

    .line 317
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public greylist-max-o getResponse()Lcom/android/okhttp/Response;
    .registers 1

    .line 342
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public greylist hasResponse()Z
    .registers 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 332
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method greylist-max-o permitsRequestBody(Lcom/android/okhttp/Request;)Z
    .registers 2

    .line 312
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public greylist readResponse()V
    .registers 5
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_6

    goto/16 :goto_173

    .line 575
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    if-nez v0, :cond_17

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-eqz v1, :cond_f

    goto :goto_17

    .line 576
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call sendRequest() first!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    :goto_17
    if-nez v0, :cond_1b

    goto/16 :goto_173

    .line 584
    :cond_1b
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    if-eqz v1, :cond_2a

    .line 585
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    invoke-interface {v1, v0}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 586
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    goto/16 :goto_ad

    .line 588
    :cond_2a
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    if-nez v1, :cond_3b

    .line 589
    new-instance v1, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lcom/android/okhttp/internal/http/HttpEngine;ILcom/android/okhttp/Request;)V

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object v0

    goto :goto_ad

    .line 593
    :cond_3b
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    if-eqz v0, :cond_52

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_52

    .line 594
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->emit()Lcom/android/okhttp/okio/BufferedSink;

    .line 598
    :cond_52
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_8d

    .line 599
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Request;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_86

    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    instance-of v1, v0, Lcom/android/okhttp/internal/http/RetryableSink;

    if-eqz v1, :cond_86

    .line 601
    check-cast v0, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/RetryableSink;->contentLength()J

    move-result-wide v0

    .line 602
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v2

    const-string v3, "Content-Length"

    .line 603
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    .line 606
    :cond_86
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 610
    :cond_8d
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    if-eqz v0, :cond_a9

    .line 611
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferedRequestBody:Lcom/android/okhttp/okio/BufferedSink;

    if-eqz v1, :cond_99

    .line 613
    invoke-interface {v1}, Lcom/android/okhttp/okio/Sink;->close()V

    goto :goto_9c

    .line 615
    :cond_99
    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->close()V

    .line 617
    :goto_9c
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    instance-of v1, v0, Lcom/android/okhttp/internal/http/RetryableSink;

    if-eqz v1, :cond_a9

    .line 618
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    check-cast v0, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-interface {v1, v0}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V

    .line 622
    :cond_a9
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->readNetworkResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    .line 625
    :goto_ad
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/okhttp/internal/http/HttpEngine;->receiveHeaders(Lcom/android/okhttp/Headers;)V

    .line 628
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-eqz v1, :cond_130

    .line 629
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->validate(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)Z

    move-result v1

    if-eqz v1, :cond_127

    .line 630
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 631
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 632
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    .line 633
    invoke-virtual {v2}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/http/HttpEngine;->combine(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    .line 634
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 635
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 636
    invoke-virtual {v1}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 637
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/ResponseBody;->close()V

    .line 638
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 642
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    move-result-object v0

    .line 643
    invoke-interface {v0}, Lcom/android/okhttp/internal/InternalCache;->trackConditionalCacheHit()V

    .line 644
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/internal/InternalCache;->update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V

    .line 645
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    return-void

    .line 648
    :cond_127
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 652
    :cond_130
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 653
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 654
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    .line 655
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    .line 656
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/okhttp/Response$Builder;->networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 659
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->hasBody(Lcom/android/okhttp/Response;)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 660
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->maybeCache()V

    .line 661
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->storeRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/http/HttpEngine;->cacheWritingResponse(Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    :cond_173
    :goto_173
    return-void
.end method

.method public greylist-max-o receiveHeaders(Lcom/android/okhttp/Headers;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 889
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 891
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    :cond_16
    return-void
.end method

.method public greylist-max-o recover(Lcom/android/okhttp/internal/http/RouteException;)Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 12

    .line 357
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/http/StreamAllocation;->recover(Lcom/android/okhttp/internal/http/RouteException;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    .line 361
    :cond_a
    iget-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result p1

    if-nez p1, :cond_13

    return-object v0

    .line 365
    :cond_13
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v7

    .line 368
    new-instance v1, Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    iget-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    iget-boolean v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    iget-boolean v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    iget-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    move-object v8, p1

    check-cast v8, Lcom/android/okhttp/internal/http/RetryableSink;

    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    invoke-direct/range {v1 .. v9}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    return-object v1
.end method

.method public greylist-max-o recover(Ljava/io/IOException;)Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/internal/http/HttpEngine;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/internal/http/HttpEngine;
    .registers 13

    .line 379
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/internal/http/StreamAllocation;->recover(Ljava/io/IOException;Lcom/android/okhttp/okio/Sink;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    .line 383
    :cond_a
    iget-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {p1}, Lcom/android/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result p1

    if-nez p1, :cond_13

    return-object v0

    .line 387
    :cond_13
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v7

    .line 390
    new-instance v1, Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    iget-boolean v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    iget-boolean v5, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    iget-boolean v6, p0, Lcom/android/okhttp/internal/http/HttpEngine;->forWebSocket:Z

    move-object v8, p2

    check-cast v8, Lcom/android/okhttp/internal/http/RetryableSink;

    iget-object v9, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    invoke-direct/range {v1 .. v9}, Lcom/android/okhttp/internal/http/HttpEngine;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;ZZZLcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/http/RetryableSink;Lcom/android/okhttp/Response;)V

    return-object v1
.end method

.method public greylist-max-o releaseStreamAllocation()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/StreamAllocation;->release()V

    return-void
.end method

.method public greylist-max-o sameConnection(Lcom/android/okhttp/HttpUrl;)Z
    .registers 4

    .line 979
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object p0

    .line 980
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 981
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v1

    if-ne v0, v1, :cond_2e

    .line 982
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public greylist sendRequest()V
    .registers 7
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RequestException;,
            Lcom/android/okhttp/internal/http/RouteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    if-eqz v0, :cond_6

    goto/16 :goto_ac

    .line 209
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    if-nez v0, :cond_112

    .line 211
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Request;

    move-result-object v0

    .line 213
    sget-object v1, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/Internal;->internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 215
    invoke-interface {v1, v0}, Lcom/android/okhttp/internal/InternalCache;->get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object v2

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    .line 218
    :goto_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 219
    new-instance v5, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;

    invoke-direct {v5, v3, v4, v0, v2}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;-><init>(JLcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V

    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->get()Lcom/android/okhttp/internal/http/CacheStrategy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheStrategy:Lcom/android/okhttp/internal/http/CacheStrategy;

    .line 220
    iget-object v4, v3, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    iput-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    .line 221
    iget-object v4, v3, Lcom/android/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/android/okhttp/Response;

    iput-object v4, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-eqz v1, :cond_3c

    .line 224
    invoke-interface {v1, v3}, Lcom/android/okhttp/internal/InternalCache;->trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V

    :cond_3c
    if-eqz v2, :cond_49

    .line 227
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-nez v1, :cond_49

    .line 228
    invoke-virtual {v2}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 231
    :cond_49
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    if-eqz v1, :cond_ad

    .line 232
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->connect()Lcom/android/okhttp/internal/http/HttpStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    .line 233
    invoke-interface {v1, p0}, Lcom/android/okhttp/internal/http/HttpStream;->setHttpEngine(Lcom/android/okhttp/internal/http/HttpEngine;)V

    .line 239
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->callerWritesRequestBody:Z

    if-eqz v1, :cond_ac

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-virtual {p0, v1}, Lcom/android/okhttp/internal/http/HttpEngine;->permitsRequestBody(Lcom/android/okhttp/Request;)Z

    move-result v1

    if-eqz v1, :cond_ac

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    if-nez v1, :cond_ac

    .line 240
    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Request;)J

    move-result-wide v0

    .line 241
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->bufferRequestBody:Z

    if-eqz v2, :cond_9b

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_93

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_8b

    .line 249
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v2, v3}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 250
    new-instance v2, Lcom/android/okhttp/internal/http/RetryableSink;

    long-to-int v0, v0

    invoke-direct {v2, v0}, Lcom/android/okhttp/internal/http/RetryableSink;-><init>(I)V

    iput-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    return-void

    .line 255
    :cond_8b
    new-instance v0, Lcom/android/okhttp/internal/http/RetryableSink;

    invoke-direct {v0}, Lcom/android/okhttp/internal/http/RetryableSink;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    return-void

    .line 243
    :cond_93
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 258
    :cond_9b
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v2, v3}, Lcom/android/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/android/okhttp/Request;)V

    .line 259
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpEngine;->httpStream:Lcom/android/okhttp/internal/http/HttpStream;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpEngine;->networkRequest:Lcom/android/okhttp/Request;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/okhttp/internal/http/HttpStream;->createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->requestBodyOut:Lcom/android/okhttp/okio/Sink;

    :cond_ac
    :goto_ac
    return-void

    .line 264
    :cond_ad
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_d6

    .line 266
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 267
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 268
    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->cacheResponse:Lcom/android/okhttp/Response;

    .line 269
    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->cacheResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    goto :goto_109

    .line 273
    :cond_d6
    new-instance v0, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Response$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userRequest:Lcom/android/okhttp/Request;

    .line 274
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine;->priorResponse:Lcom/android/okhttp/Response;

    .line 275
    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->stripBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->priorResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    .line 276
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    const/16 v1, 0x1f8

    .line 277
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    .line 278
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/okhttp/internal/http/HttpEngine;->EMPTY_BODY:Lcom/android/okhttp/ResponseBody;

    .line 279
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    .line 283
    :goto_109
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/HttpEngine;->unzip(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->userResponse:Lcom/android/okhttp/Response;

    return-void

    .line 209
    :cond_112
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public greylist writingRequestHeaders()V
    .registers 5
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 307
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    return-void

    .line 307
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
