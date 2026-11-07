.class public final Lcom/android/okhttp/internal/huc/JavaApiConverter;
.super Ljava/lang/Object;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;,
        Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 60
    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/huc/JavaApiConverter;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000(Ljava/lang/String;)J
    .registers 3

    .line 59
    invoke-static {p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist access$100()Ljava/lang/RuntimeException;
    .registers 1

    .line 59
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200()Ljava/lang/RuntimeException;
    .registers 1

    .line 59
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$400()Ljava/lang/RuntimeException;
    .registers 1

    .line 59
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestSslAccessException()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist createHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/okhttp/Headers;"
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 143
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_26

    goto :goto_d

    .line 147
    :cond_26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 149
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 150
    sget-object v4, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual {v4, v0, v2, v3}, Lcom/android/okhttp/internal/Internal;->addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 153
    :cond_50
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createJavaCacheRequest(Lcom/android/okhttp/internal/http/CacheRequest;)Ljava/net/CacheRequest;
    .registers 2

    .line 360
    new-instance v0, Lcom/android/okhttp/internal/huc/JavaApiConverter$3;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$3;-><init>(Lcom/android/okhttp/internal/http/CacheRequest;)V

    return-object v0
.end method

.method public static blacklist createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;
    .registers 5

    .line 292
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    .line 293
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    .line 294
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 295
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v2

    .line 296
    new-instance v3, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;

    invoke-direct {v3, v2, v0, p0, v1}, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;-><init>(Lcom/android/okhttp/Handshake;Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseBody;)V

    return-object v3

    .line 343
    :cond_1c
    new-instance v2, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;

    invoke-direct {v2, v0, p0, v1}, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseBody;)V

    return-object v2
.end method

.method static blacklist createJavaUrlConnectionForCachePut(Lcom/android/okhttp/Response;)Ljava/net/HttpURLConnection;
    .registers 3

    .line 381
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 384
    new-instance v0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;

    new-instance v1, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-direct {v1, p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;-><init>(Lcom/android/okhttp/Response;)V

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;-><init>(Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)V

    return-object v0

    .line 386
    :cond_15
    new-instance v0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;-><init>(Lcom/android/okhttp/Response;)V

    return-object v0
.end method

.method private static blacklist createOkBody(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)Lcom/android/okhttp/ResponseBody;
    .registers 3

    .line 476
    new-instance v0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;-><init>(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)V

    return-object v0
.end method

.method private static blacklist createOkBody(Ljava/net/URLConnection;)Lcom/android/okhttp/ResponseBody;
    .registers 2

    .line 503
    invoke-virtual {p0}, Ljava/net/URLConnection;->getDoInput()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 506
    :cond_8
    new-instance v0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;-><init>(Ljava/net/URLConnection;)V

    return-object v0
.end method

.method public static blacklist createOkRequest(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Lcom/android/okhttp/Request;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/okhttp/Request;"
        }
    .end annotation

    .line 272
    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 273
    sget-object v0, Lcom/android/okhttp/internal/huc/JavaApiConverter;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 276
    :goto_a
    new-instance v1, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Request$Builder;-><init>()V

    .line 277
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    .line 278
    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    if-eqz p2, :cond_24

    .line 281
    invoke-static {p2}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object p1

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/okhttp/Request$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;

    .line 284
    :cond_24
    invoke-virtual {p0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object p0

    return-object p0
.end method

.method static blacklist createOkResponseForCacheGet(Lcom/android/okhttp/Request;Ljava/net/CacheResponse;)Lcom/android/okhttp/Response;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/android/okhttp/Headers;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 209
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v0

    goto :goto_20

    .line 211
    :cond_18
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/okhttp/internal/http/OkHeaders;->varyHeaders(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;

    move-result-object v0

    .line 214
    :goto_20
    new-instance v1, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Request$Builder;-><init>()V

    .line 215
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    .line 216
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/okhttp/Request$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    .line 218
    invoke-virtual {p0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object p0

    .line 220
    new-instance v0, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Response$Builder;-><init>()V

    .line 223
    invoke-virtual {v0, p0}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    .line 226
    invoke-static {p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractStatusLine(Ljava/net/CacheResponse;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object p0

    .line 227
    iget-object v1, p0, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    .line 228
    iget v1, p0, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    .line 229
    iget-object p0, p0, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    .line 232
    invoke-static {p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/net/CacheResponse;)Lcom/android/okhttp/Headers;

    move-result-object p0

    .line 233
    invoke-virtual {v0, p0}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    .line 236
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkBody(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)Lcom/android/okhttp/ResponseBody;

    move-result-object p0

    .line 237
    invoke-virtual {v0, p0}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    .line 240
    instance-of p0, p1, Ljava/net/SecureCacheResponse;

    if-eqz p0, :cond_8b

    .line 241
    check-cast p1, Ljava/net/SecureCacheResponse;

    .line 246
    :try_start_71
    invoke-virtual {p1}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;

    move-result-object p0
    :try_end_75
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_71 .. :try_end_75} :catch_76

    goto :goto_78

    .line 248
    :catch_76
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 250
    :goto_78
    invoke-virtual {p1}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_80

    .line 252
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 255
    :cond_80
    invoke-virtual {p1}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-static {p1, p0, v1}, Lcom/android/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;

    move-result-object p0

    .line 256
    invoke-virtual {v0, p0}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    .line 259
    :cond_8b
    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createOkResponseForCachePut(Ljava/net/URI;Ljava/net/URLConnection;)Lcom/android/okhttp/Response;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    move-object v0, p1

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 75
    new-instance v1, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Response$Builder;-><init>()V

    .line 78
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object v2

    .line 80
    invoke-static {p1, v2}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->varyHeaders(Ljava/net/URLConnection;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_18

    return-object v3

    .line 86
    :cond_18
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 88
    sget-object v5, Lcom/android/okhttp/internal/huc/JavaApiConverter;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    goto :goto_26

    :cond_25
    move-object v5, v3

    .line 91
    :goto_26
    new-instance v6, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v6}, Lcom/android/okhttp/Request$Builder;-><init>()V

    .line 92
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/android/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    .line 93
    invoke-virtual {p0, v4, v5}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    .line 94
    invoke-virtual {p0, v2}, Lcom/android/okhttp/Request$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object p0

    .line 96
    invoke-virtual {v1, p0}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    .line 99
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractStatusLine(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object p0

    .line 100
    iget-object v2, p0, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    .line 101
    iget v2, p0, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    .line 102
    iget-object p0, p0, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    .line 105
    invoke-virtual {v1}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object p0

    .line 106
    invoke-virtual {v1, p0}, Lcom/android/okhttp/Response$Builder;->networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    .line 109
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkResponseHeaders(Ljava/net/HttpURLConnection;)Lcom/android/okhttp/Headers;

    move-result-object p0

    .line 110
    invoke-virtual {v1, p0}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    .line 113
    invoke-static {p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkBody(Ljava/net/URLConnection;)Lcom/android/okhttp/ResponseBody;

    move-result-object p0

    .line 114
    invoke-virtual {v1, p0}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    .line 117
    instance-of p0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p0, :cond_8f

    .line 118
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 122
    :try_start_74
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3
    :try_end_78
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_74 .. :try_end_78} :catch_78

    .line 127
    :catch_78
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    .line 130
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-static {p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 129
    invoke-static {p1, v0, p0}, Lcom/android/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;

    move-result-object p0

    .line 132
    invoke-virtual {v1, p0}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    .line 135
    :cond_8f
    invoke-virtual {v1}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object p0

    return-object p0
.end method

.method static blacklist extractJavaHeaders(Lcom/android/okhttp/Request;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Request;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist extractOkHeaders(Ljava/net/CacheResponse;)Lcom/android/okhttp/Headers;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object p0

    .line 403
    invoke-static {p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object p0

    return-object p0
.end method

.method static blacklist extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/okhttp/Headers;"
        }
    .end annotation

    .line 421
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 422
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 423
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_22

    goto :goto_d

    .line 431
    :cond_22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 432
    sget-object v4, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual {v4, v0, v2, v3}, Lcom/android/okhttp/internal/Internal;->addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 435
    :cond_3e
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist extractOkResponseHeaders(Ljava/net/HttpURLConnection;)Lcom/android/okhttp/Headers;
    .registers 1

    .line 411
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    .line 412
    invoke-static {p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist extractStatusLine(Ljava/net/CacheResponse;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    invoke-virtual {p0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object p0

    .line 455
    invoke-static {p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractStatusLine(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist extractStatusLine(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 445
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist extractStatusLine(Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 461
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_17

    .line 462
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_17

    const/4 p0, 0x0

    .line 468
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 464
    :cond_17
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheResponse is missing a \'null\' header containing the status line. Headers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_5

    .line 856
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_5
    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist stringToLong(Ljava/lang/String;)J
    .registers 3

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    .line 862
    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_9

    :catch_9
    return-wide v0
.end method

.method private static blacklist throwRequestHeaderAccessException()Ljava/lang/RuntimeException;
    .registers 2

    .line 844
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot access request headers"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist throwRequestModificationException()Ljava/lang/RuntimeException;
    .registers 2

    .line 840
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot modify the request."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist throwRequestSslAccessException()Ljava/lang/RuntimeException;
    .registers 2

    .line 848
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot access SSL internals"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    .registers 2

    .line 852
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot access the response body."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist varyHeaders(Ljava/net/URLConnection;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;
    .registers 7

    .line 157
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/android/okhttp/Headers;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 161
    :cond_8
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->varyFields(Lcom/android/okhttp/Headers;)Ljava/util/Set;

    move-result-object p1

    .line 162
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 163
    new-instance p0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {p0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object p0

    return-object p0

    .line 170
    :cond_1c
    instance-of v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    if-nez v0, :cond_25

    instance-of v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;

    if-nez v0, :cond_25

    return-object v1

    .line 177
    :cond_25
    invoke-virtual {p0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object p0

    .line 178
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 179
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_32
    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_54

    .line 182
    const-string v2, "Accept-Encoding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 186
    const-string v1, "gzip"

    invoke-virtual {v0, v2, v1}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_32

    .line 189
    :cond_54
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 190
    sget-object v4, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    invoke-virtual {v4, v0, v1, v3}, Lcom/android/okhttp/internal/Internal;->addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 194
    :cond_6a
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object p0

    return-object p0
.end method
