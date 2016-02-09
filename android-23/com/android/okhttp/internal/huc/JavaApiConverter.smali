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
.field private static final EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;


# direct methods
.method static synthetic -wrap0()Ljava/lang/RuntimeException;
    .locals 1

    #@0
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1()Ljava/lang/RuntimeException;
    .locals 1

    #@0
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestSslAccessException()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2()Ljava/lang/RuntimeException;
    .locals 1

    #@0
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwResponseBodyAccessException()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Ljava/lang/String;)J
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->stringToLong(Ljava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 58
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [B

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v1, v0}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Lcom/android/okhttp/internal/huc/JavaApiConverter;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    #@a
    .line 57
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static createHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/okhttp/Headers;"
        }
    .end annotation

    #@0
    .prologue
    .line 140
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@5
    .line 141
    .local v0, "builder":Lcom/android/okhttp/Headers$Builder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v7

    #@9
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "header$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v7

    #@11
    if-eqz v7, :cond_1

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/util/Map$Entry;

    #@19
    .line 142
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c
    move-result-object v7

    #@1d
    if-eqz v7, :cond_0

    #@1f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@22
    move-result-object v7

    #@23
    if-eqz v7, :cond_0

    #@25
    .line 145
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@28
    move-result-object v7

    #@29
    check-cast v7, Ljava/lang/String;

    #@2b
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    .line 146
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@32
    move-result-object v7

    #@33
    check-cast v7, Ljava/util/List;

    #@35
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v6

    #@39
    .local v6, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v7

    #@3d
    if-eqz v7, :cond_0

    #@3f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v5

    #@43
    check-cast v5, Ljava/lang/String;

    #@45
    .line 147
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    .line 148
    .local v4, "trimmedValue":Ljava/lang/String;
    sget-object v7, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@4b
    invoke-virtual {v7, v0, v3, v4}, Lcom/android/okhttp/internal/Internal;->addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    #@4e
    goto :goto_0

    #@4f
    .line 151
    .end local v1    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "trimmedValue":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "value$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@52
    move-result-object v7

    #@53
    return-object v7
.end method

.method public static createJavaCacheRequest(Lcom/android/okhttp/internal/http/CacheRequest;)Ljava/net/CacheRequest;
    .locals 1
    .param p0, "okCacheRequest"    # Lcom/android/okhttp/internal/http/CacheRequest;

    #@0
    .prologue
    .line 358
    new-instance v0, Lcom/android/okhttp/internal/huc/JavaApiConverter$3;

    #@2
    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$3;-><init>(Lcom/android/okhttp/internal/http/CacheRequest;)V

    #@5
    return-object v0
.end method

.method public static createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;
    .locals 4
    .param p0, "response"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@3
    move-result-object v2

    #@4
    .line 291
    .local v2, "headers":Lcom/android/okhttp/Headers;
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    #@7
    move-result-object v0

    #@8
    .line 292
    .local v0, "body":Lcom/android/okhttp/ResponseBody;
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Lcom/android/okhttp/Request;->isHttps()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 293
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    #@15
    move-result-object v1

    #@16
    .line 294
    .local v1, "handshake":Lcom/android/okhttp/Handshake;
    new-instance v3, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;

    #@18
    invoke-direct {v3, v1, v2, p0, v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$1;-><init>(Lcom/android/okhttp/Handshake;Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseBody;)V

    #@1b
    return-object v3

    #@1c
    .line 341
    .end local v1    # "handshake":Lcom/android/okhttp/Handshake;
    :cond_0
    new-instance v3, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;

    #@1e
    invoke-direct {v3, v2, p0, v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$2;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Response;Lcom/android/okhttp/ResponseBody;)V

    #@21
    return-object v3
.end method

.method static createJavaUrlConnectionForCachePut(Lcom/android/okhttp/Response;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p0, "okResponse"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    #@3
    move-result-object v0

    #@4
    .line 381
    .local v0, "request":Lcom/android/okhttp/Request;
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->isHttps()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 382
    new-instance v1, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;

    #@c
    new-instance v2, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    #@e
    invoke-direct {v2, p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;-><init>(Lcom/android/okhttp/Response;)V

    #@11
    invoke-direct {v1, v2}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;-><init>(Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)V

    #@14
    return-object v1

    #@15
    .line 384
    :cond_0
    new-instance v1, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    #@17
    invoke-direct {v1, p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;-><init>(Lcom/android/okhttp/Response;)V

    #@1a
    return-object v1
.end method

.method private static createOkBody(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)Lcom/android/okhttp/ResponseBody;
    .locals 1
    .param p0, "okHeaders"    # Lcom/android/okhttp/Headers;
    .param p1, "cacheResponse"    # Ljava/net/CacheResponse;

    #@0
    .prologue
    .line 474
    new-instance v0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;-><init>(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)V

    #@5
    return-object v0
.end method

.method private static createOkBody(Ljava/net/URLConnection;)Lcom/android/okhttp/ResponseBody;
    .locals 1
    .param p0, "urlConnection"    # Ljava/net/URLConnection;

    #@0
    .prologue
    .line 501
    invoke-virtual {p0}, Ljava/net/URLConnection;->getDoInput()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 502
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 504
    :cond_0
    new-instance v0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;

    #@a
    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;-><init>(Ljava/net/URLConnection;)V

    #@d
    return-object v0
.end method

.method public static createOkRequest(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Lcom/android/okhttp/Request;
    .locals 5
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/okhttp/Request;"
        }
    .end annotation

    #@0
    .prologue
    .line 270
    .local p2, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_1

    #@6
    .line 271
    sget-object v2, Lcom/android/okhttp/internal/huc/JavaApiConverter;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    #@8
    .line 274
    :goto_0
    new-instance v3, Lcom/android/okhttp/Request$Builder;

    #@a
    invoke-direct {v3}, Lcom/android/okhttp/Request$Builder;-><init>()V

    #@d
    .line 275
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    .line 274
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p1, v2}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    #@18
    move-result-object v0

    #@19
    .line 278
    .local v0, "builder":Lcom/android/okhttp/Request$Builder;
    if-eqz p2, :cond_0

    #@1b
    .line 279
    invoke-static {p2}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    #@1e
    move-result-object v1

    #@1f
    .line 280
    .local v1, "headers":Lcom/android/okhttp/Headers;
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Request$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;

    #@22
    .line 282
    .end local v1    # "headers":Lcom/android/okhttp/Headers;
    :cond_0
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    #@25
    move-result-object v3

    #@26
    return-object v3

    #@27
    .line 272
    .end local v0    # "builder":Lcom/android/okhttp/Request$Builder;
    :cond_1
    const/4 v2, 0x0

    #@28
    .local v2, "placeholderBody":Lcom/android/okhttp/RequestBody;
    goto :goto_0
.end method

.method static createOkResponseForCacheGet(Lcom/android/okhttp/Request;Ljava/net/CacheResponse;)Lcom/android/okhttp/Response;
    .locals 16
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .param p1, "javaResponse"    # Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 203
    invoke-virtual/range {p1 .. p1}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    #@3
    move-result-object v13

    #@4
    invoke-static {v13}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    #@7
    move-result-object v10

    #@8
    .line 205
    .local v10, "responseHeaders":Lcom/android/okhttp/Headers;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/android/okhttp/Headers;)Z

    #@b
    move-result v13

    #@c
    if-eqz v13, :cond_2

    #@e
    .line 207
    new-instance v13, Lcom/android/okhttp/Headers$Builder;

    #@10
    invoke-direct {v13}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@13
    invoke-virtual {v13}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@16
    move-result-object v12

    #@17
    .line 212
    .local v12, "varyHeaders":Lcom/android/okhttp/Headers;
    :goto_0
    new-instance v13, Lcom/android/okhttp/Request$Builder;

    #@19
    invoke-direct {v13}, Lcom/android/okhttp/Request$Builder;-><init>()V

    #@1c
    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@1f
    move-result-object v14

    #@20
    .line 212
    invoke-virtual {v13, v14}, Lcom/android/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/android/okhttp/Request$Builder;

    #@23
    move-result-object v13

    #@24
    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@27
    move-result-object v14

    #@28
    const/4 v15, 0x0

    #@29
    .line 212
    invoke-virtual {v13, v14, v15}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    #@2c
    move-result-object v13

    #@2d
    invoke-virtual {v13, v12}, Lcom/android/okhttp/Request$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;

    #@30
    move-result-object v13

    #@31
    invoke-virtual {v13}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    #@34
    move-result-object v1

    #@35
    .line 218
    .local v1, "cacheRequest":Lcom/android/okhttp/Request;
    new-instance v8, Lcom/android/okhttp/Response$Builder;

    #@37
    invoke-direct {v8}, Lcom/android/okhttp/Response$Builder;-><init>()V

    #@3a
    .line 221
    .local v8, "okResponseBuilder":Lcom/android/okhttp/Response$Builder;
    invoke-virtual {v8, v1}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    #@3d
    .line 224
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractStatusLine(Ljava/net/CacheResponse;)Ljava/lang/String;

    #@40
    move-result-object v13

    #@41
    invoke-static {v13}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    #@44
    move-result-object v11

    #@45
    .line 225
    .local v11, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    iget-object v13, v11, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    #@47
    invoke-virtual {v8, v13}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    #@4a
    .line 226
    iget v13, v11, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    #@4c
    invoke-virtual {v8, v13}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    #@4f
    .line 227
    iget-object v13, v11, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    #@51
    invoke-virtual {v8, v13}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    #@54
    .line 230
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/net/CacheResponse;)Lcom/android/okhttp/Headers;

    #@57
    move-result-object v7

    #@58
    .line 231
    .local v7, "okHeaders":Lcom/android/okhttp/Headers;
    invoke-virtual {v8, v7}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    #@5b
    .line 234
    move-object/from16 v0, p1

    #@5d
    invoke-static {v7, v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkBody(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)Lcom/android/okhttp/ResponseBody;

    #@60
    move-result-object v6

    #@61
    .line 235
    .local v6, "okBody":Lcom/android/okhttp/ResponseBody;
    invoke-virtual {v8, v6}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    #@64
    .line 238
    move-object/from16 v0, p1

    #@66
    instance-of v13, v0, Ljava/net/SecureCacheResponse;

    #@68
    if-eqz v13, :cond_1

    #@6a
    move-object/from16 v4, p1

    #@6c
    .line 239
    check-cast v4, Ljava/net/SecureCacheResponse;

    #@6e
    .line 244
    .local v4, "javaSecureCacheResponse":Ljava/net/SecureCacheResponse;
    :try_start_0
    invoke-virtual {v4}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    #@71
    move-result-object v9

    #@72
    .line 248
    .local v9, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_1
    invoke-virtual {v4}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    #@75
    move-result-object v5

    #@76
    .line 249
    .local v5, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-nez v5, :cond_0

    #@78
    .line 250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@7b
    move-result-object v5

    #@7c
    .line 253
    :cond_0
    invoke-virtual {v4}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    #@7f
    move-result-object v13

    #@80
    .line 252
    invoke-static {v13, v9, v5}, Lcom/android/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;

    #@83
    move-result-object v3

    #@84
    .line 254
    .local v3, "handshake":Lcom/android/okhttp/Handshake;
    invoke-virtual {v8, v3}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    #@87
    .line 257
    .end local v3    # "handshake":Lcom/android/okhttp/Handshake;
    .end local v4    # "javaSecureCacheResponse":Ljava/net/SecureCacheResponse;
    .end local v5    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v9    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_1
    invoke-virtual {v8}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    #@8a
    move-result-object v13

    #@8b
    return-object v13

    #@8c
    .line 209
    .end local v1    # "cacheRequest":Lcom/android/okhttp/Request;
    .end local v6    # "okBody":Lcom/android/okhttp/ResponseBody;
    .end local v7    # "okHeaders":Lcom/android/okhttp/Headers;
    .end local v8    # "okResponseBuilder":Lcom/android/okhttp/Response$Builder;
    .end local v11    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    .end local v12    # "varyHeaders":Lcom/android/okhttp/Headers;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    #@8f
    move-result-object v13

    #@90
    invoke-static {v13, v10}, Lcom/android/okhttp/internal/http/OkHeaders;->varyHeaders(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;

    #@93
    move-result-object v12

    #@94
    .restart local v12    # "varyHeaders":Lcom/android/okhttp/Headers;
    goto :goto_0

    #@95
    .line 245
    .restart local v1    # "cacheRequest":Lcom/android/okhttp/Request;
    .restart local v4    # "javaSecureCacheResponse":Ljava/net/SecureCacheResponse;
    .restart local v6    # "okBody":Lcom/android/okhttp/ResponseBody;
    .restart local v7    # "okHeaders":Lcom/android/okhttp/Headers;
    .restart local v8    # "okResponseBuilder":Lcom/android/okhttp/Response$Builder;
    .restart local v11    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    :catch_0
    move-exception v2

    #@96
    .line 246
    .local v2, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@99
    move-result-object v9

    #@9a
    .restart local v9    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    goto :goto_1
.end method

.method public static createOkResponseForCachePut(Ljava/net/URI;Ljava/net/URLConnection;)Lcom/android/okhttp/Response;
    .locals 21
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    move-object/from16 v4, p1

    #@2
    .line 71
    check-cast v4, Ljava/net/HttpURLConnection;

    #@4
    .line 73
    .local v4, "httpUrlConnection":Ljava/net/HttpURLConnection;
    new-instance v11, Lcom/android/okhttp/Response$Builder;

    #@6
    invoke-direct {v11}, Lcom/android/okhttp/Response$Builder;-><init>()V

    #@9
    .line 76
    .local v11, "okResponseBuilder":Lcom/android/okhttp/Response$Builder;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    #@c
    move-result-object v18

    #@d
    invoke-static/range {v18 .. v18}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    #@10
    move-result-object v15

    #@11
    .line 78
    .local v15, "responseHeaders":Lcom/android/okhttp/Headers;
    move-object/from16 v0, p1

    #@13
    invoke-static {v0, v15}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->varyHeaders(Ljava/net/URLConnection;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;

    #@16
    move-result-object v17

    #@17
    .line 79
    .local v17, "varyHeaders":Lcom/android/okhttp/Headers;
    if-nez v17, :cond_0

    #@19
    .line 80
    const/16 v18, 0x0

    #@1b
    return-object v18

    #@1c
    .line 84
    :cond_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    #@1f
    move-result-object v14

    #@20
    .line 85
    .local v14, "requestMethod":Ljava/lang/String;
    invoke-static {v14}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    #@23
    move-result v18

    #@24
    if-eqz v18, :cond_2

    #@26
    .line 86
    sget-object v13, Lcom/android/okhttp/internal/huc/JavaApiConverter;->EMPTY_REQUEST_BODY:Lcom/android/okhttp/RequestBody;

    #@28
    .line 89
    :goto_0
    new-instance v18, Lcom/android/okhttp/Request$Builder;

    #@2a
    invoke-direct/range {v18 .. v18}, Lcom/android/okhttp/Request$Builder;-><init>()V

    #@2d
    .line 90
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@30
    move-result-object v19

    #@31
    .line 89
    invoke-virtual/range {v18 .. v19}, Lcom/android/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@34
    move-result-object v18

    #@35
    move-object/from16 v0, v18

    #@37
    invoke-virtual {v0, v14, v13}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    #@3a
    move-result-object v18

    #@3b
    move-object/from16 v0, v18

    #@3d
    move-object/from16 v1, v17

    #@3f
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Request$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;

    #@42
    move-result-object v18

    #@43
    invoke-virtual/range {v18 .. v18}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    #@46
    move-result-object v10

    #@47
    .line 94
    .local v10, "okRequest":Lcom/android/okhttp/Request;
    invoke-virtual {v11, v10}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    #@4a
    .line 97
    invoke-static {v4}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractStatusLine(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    #@4d
    move-result-object v18

    #@4e
    invoke-static/range {v18 .. v18}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    #@51
    move-result-object v16

    #@52
    .line 98
    .local v16, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    move-object/from16 v0, v16

    #@54
    iget-object v0, v0, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    #@56
    move-object/from16 v18, v0

    #@58
    move-object/from16 v0, v18

    #@5a
    invoke-virtual {v11, v0}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    #@5d
    .line 99
    move-object/from16 v0, v16

    #@5f
    iget v0, v0, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    #@61
    move/from16 v18, v0

    #@63
    move/from16 v0, v18

    #@65
    invoke-virtual {v11, v0}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    #@68
    .line 100
    move-object/from16 v0, v16

    #@6a
    iget-object v0, v0, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    #@6c
    move-object/from16 v18, v0

    #@6e
    move-object/from16 v0, v18

    #@70
    invoke-virtual {v11, v0}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    #@73
    .line 103
    invoke-virtual {v11}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    #@76
    move-result-object v7

    #@77
    .line 104
    .local v7, "networkResponse":Lcom/android/okhttp/Response;
    invoke-virtual {v11, v7}, Lcom/android/okhttp/Response$Builder;->networkResponse(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response$Builder;

    #@7a
    .line 107
    invoke-static {v4}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkResponseHeaders(Ljava/net/HttpURLConnection;)Lcom/android/okhttp/Headers;

    #@7d
    move-result-object v9

    #@7e
    .line 108
    .local v9, "okHeaders":Lcom/android/okhttp/Headers;
    invoke-virtual {v11, v9}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    #@81
    .line 111
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkBody(Ljava/net/URLConnection;)Lcom/android/okhttp/ResponseBody;

    #@84
    move-result-object v8

    #@85
    .line 112
    .local v8, "okBody":Lcom/android/okhttp/ResponseBody;
    invoke-virtual {v11, v8}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    #@88
    .line 115
    instance-of v0, v4, Ljavax/net/ssl/HttpsURLConnection;

    #@8a
    move/from16 v18, v0

    #@8c
    if-eqz v18, :cond_1

    #@8e
    move-object v5, v4

    #@8f
    .line 116
    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    #@91
    .line 120
    .local v5, "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_0
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    #@94
    move-result-object v12

    #@95
    .line 125
    :goto_1
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    #@98
    move-result-object v6

    #@99
    .line 128
    .local v6, "localCertificates":[Ljava/security/cert/Certificate;
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    #@9c
    move-result-object v18

    #@9d
    invoke-static {v12}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;

    #@a0
    move-result-object v19

    #@a1
    .line 129
    invoke-static {v6}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;

    #@a4
    move-result-object v20

    #@a5
    .line 127
    invoke-static/range {v18 .. v20}, Lcom/android/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;

    #@a8
    move-result-object v3

    #@a9
    .line 130
    .local v3, "handshake":Lcom/android/okhttp/Handshake;
    invoke-virtual {v11, v3}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    #@ac
    .line 133
    .end local v3    # "handshake":Lcom/android/okhttp/Handshake;
    .end local v5    # "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v6    # "localCertificates":[Ljava/security/cert/Certificate;
    :cond_1
    invoke-virtual {v11}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    #@af
    move-result-object v18

    #@b0
    return-object v18

    #@b1
    .line 87
    .end local v7    # "networkResponse":Lcom/android/okhttp/Response;
    .end local v8    # "okBody":Lcom/android/okhttp/ResponseBody;
    .end local v9    # "okHeaders":Lcom/android/okhttp/Headers;
    .end local v10    # "okRequest":Lcom/android/okhttp/Request;
    .end local v16    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    :cond_2
    const/4 v13, 0x0

    #@b2
    .local v13, "placeholderBody":Lcom/android/okhttp/RequestBody;
    goto/16 :goto_0

    #@b4
    .line 121
    .end local v13    # "placeholderBody":Lcom/android/okhttp/RequestBody;
    .restart local v5    # "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v7    # "networkResponse":Lcom/android/okhttp/Response;
    .restart local v8    # "okBody":Lcom/android/okhttp/ResponseBody;
    .restart local v9    # "okHeaders":Lcom/android/okhttp/Headers;
    .restart local v10    # "okRequest":Lcom/android/okhttp/Request;
    .restart local v16    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    :catch_0
    move-exception v2

    #@b5
    .line 122
    .local v2, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v12, 0x0

    #@b6
    .local v12, "peerCertificates":[Ljava/security/cert/Certificate;
    goto :goto_1
.end method

.method static extractJavaHeaders(Lcom/android/okhttp/Request;)Ljava/util/Map;
    .locals 2
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Request;",
            ")",
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
    .line 392
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static extractOkHeaders(Ljava/net/CacheResponse;)Lcom/android/okhttp/Headers;
    .locals 2
    .param p0, "javaResponse"    # Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 400
    invoke-virtual {p0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    .line 401
    .local v0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method static extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/okhttp/Headers;"
        }
    .end annotation

    #@0
    .prologue
    .line 419
    .local p0, "javaHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Lcom/android/okhttp/Headers$Builder;

    #@2
    invoke-direct {v3}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@5
    .line 420
    .local v3, "okHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v6

    #@9
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "javaHeader$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_1

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/Map$Entry;

    #@19
    .line 421
    .local v0, "javaHeader":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/lang/String;

    #@1f
    .line 422
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@21
    .line 429
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@24
    move-result-object v6

    #@25
    check-cast v6, Ljava/util/List;

    #@27
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v5

    #@2b
    .local v5, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v6

    #@2f
    if-eqz v6, :cond_0

    #@31
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    check-cast v4, Ljava/lang/String;

    #@37
    .line 430
    .local v4, "value":Ljava/lang/String;
    sget-object v6, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@39
    invoke-virtual {v6, v3, v2, v4}, Lcom/android/okhttp/internal/Internal;->addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    goto :goto_0

    #@3d
    .line 433
    .end local v0    # "javaHeader":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "value$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v3}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@40
    move-result-object v6

    #@41
    return-object v6
.end method

.method private static extractOkResponseHeaders(Ljava/net/HttpURLConnection;)Lcom/android/okhttp/Headers;
    .locals 2
    .param p0, "httpUrlConnection"    # Ljava/net/HttpURLConnection;

    #@0
    .prologue
    .line 409
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    .line 410
    .local v0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractOkHeaders(Ljava/util/Map;)Lcom/android/okhttp/Headers;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method private static extractStatusLine(Ljava/net/CacheResponse;)Ljava/lang/String;
    .locals 2
    .param p0, "javaResponse"    # Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 452
    invoke-virtual {p0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    .line 453
    .local v0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractStatusLine(Ljava/util/Map;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method private static extractStatusLine(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "httpUrlConnection"    # Ljava/net/HttpURLConnection;

    #@0
    .prologue
    .line 443
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static extractStatusLine(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
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

    #@0
    .prologue
    .local p0, "javaResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 459
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    .line 460
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    #@a
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 462
    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    #@12
    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "CacheResponse is missing a \'null\' header containing the status line. Headers="

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 462
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 466
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Ljava/lang/String;

    #@30
    return-object v1
.end method

.method private static nullSafeImmutableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 858
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    #@2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    goto :goto_0
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 862
    if-nez p0, :cond_0

    #@4
    return-wide v2

    #@5
    .line 864
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-wide v2

    #@9
    return-wide v2

    #@a
    .line 865
    :catch_0
    move-exception v0

    #@b
    .line 866
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide v2
.end method

.method private static throwRequestHeaderAccessException()Ljava/lang/RuntimeException;
    .locals 2

    #@0
    .prologue
    .line 846
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "ResponseCache cannot access request headers"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method private static throwRequestModificationException()Ljava/lang/RuntimeException;
    .locals 2

    #@0
    .prologue
    .line 842
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "ResponseCache cannot modify the request."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method private static throwRequestSslAccessException()Ljava/lang/RuntimeException;
    .locals 2

    #@0
    .prologue
    .line 850
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "ResponseCache cannot access SSL internals"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method private static throwResponseBodyAccessException()Ljava/lang/RuntimeException;
    .locals 2

    #@0
    .prologue
    .line 854
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "ResponseCache cannot access the response body."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method private static varyHeaders(Ljava/net/URLConnection;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;
    .locals 10
    .param p0, "urlConnection"    # Ljava/net/URLConnection;
    .param p1, "responseHeaders"    # Lcom/android/okhttp/Headers;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 155
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/android/okhttp/Headers;)Z

    #@4
    move-result v8

    #@5
    if-eqz v8, :cond_0

    #@7
    .line 157
    return-object v9

    #@8
    .line 159
    :cond_0
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->varyFields(Lcom/android/okhttp/Headers;)Ljava/util/Set;

    #@b
    move-result-object v7

    #@c
    .line 160
    .local v7, "varyFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    #@f
    move-result v8

    #@10
    if-eqz v8, :cond_1

    #@12
    .line 161
    new-instance v8, Lcom/android/okhttp/Headers$Builder;

    #@14
    invoke-direct {v8}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@17
    invoke-virtual {v8}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@1a
    move-result-object v8

    #@1b
    return-object v8

    #@1c
    .line 168
    :cond_1
    instance-of v8, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    #@1e
    if-nez v8, :cond_2

    #@20
    .line 169
    instance-of v8, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;

    #@22
    .line 168
    :goto_0
    if-nez v8, :cond_3

    #@24
    .line 170
    return-object v9

    #@25
    .line 168
    :cond_2
    const/4 v8, 0x1

    #@26
    goto :goto_0

    #@27
    .line 175
    :cond_3
    invoke-virtual {p0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    #@2a
    move-result-object v5

    #@2b
    .line 176
    .local v5, "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v6, Lcom/android/okhttp/Headers$Builder;

    #@2d
    invoke-direct {v6}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@30
    .line 177
    .local v6, "result":Lcom/android/okhttp/Headers$Builder;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v1

    #@34
    .local v1, "fieldName$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v8

    #@38
    if-eqz v8, :cond_6

    #@3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Ljava/lang/String;

    #@40
    .line 178
    .local v0, "fieldName":Ljava/lang/String;
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object v4

    #@44
    check-cast v4, Ljava/util/List;

    #@46
    .line 179
    .local v4, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v4, :cond_5

    #@48
    .line 180
    const-string/jumbo v8, "Accept-Encoding"

    #@4b
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v8

    #@4f
    if-eqz v8, :cond_4

    #@51
    .line 184
    const-string/jumbo v8, "Accept-Encoding"

    #@54
    const-string/jumbo v9, "gzip"

    #@57
    invoke-virtual {v6, v8, v9}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@5a
    goto :goto_1

    #@5b
    .line 187
    :cond_5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5e
    move-result-object v3

    #@5f
    .local v3, "fieldValue$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@62
    move-result v8

    #@63
    if-eqz v8, :cond_4

    #@65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@68
    move-result-object v2

    #@69
    check-cast v2, Ljava/lang/String;

    #@6b
    .line 188
    .local v2, "fieldValue":Ljava/lang/String;
    sget-object v8, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@6d
    invoke-virtual {v8, v6, v0, v2}, Lcom/android/okhttp/internal/Internal;->addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    #@70
    goto :goto_2

    #@71
    .line 192
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v2    # "fieldValue":Ljava/lang/String;
    .end local v3    # "fieldValue$iterator":Ljava/util/Iterator;
    .end local v4    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v6}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@74
    move-result-object v8

    #@75
    return-object v8
.end method
