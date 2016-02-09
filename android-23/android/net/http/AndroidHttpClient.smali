.class public final Landroid/net/http/AndroidHttpClient;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/AndroidHttpClient$LoggingConfiguration;,
        Landroid/net/http/AndroidHttpClient$CurlLogger;,
        Landroid/net/http/AndroidHttpClient$1;
    }
.end annotation


# static fields
.field public static DEFAULT_SYNC_MIN_GZIP_BYTES:J = 0x0L

.field private static final SOCKET_OPERATION_TIMEOUT:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "AndroidHttpClient"

.field private static final sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

.field private static textContentTypes:[Ljava/lang/String;


# instance fields
.field private volatile curlConfiguration:Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

.field private final delegate:Lorg/apache/http/client/HttpClient;

.field private mLeakedException:Ljava/lang/RuntimeException;


# direct methods
.method static synthetic -get0(Landroid/net/http/AndroidHttpClient;)Landroid/net/http/AndroidHttpClient$LoggingConfiguration;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->curlConfiguration:Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Lorg/apache/http/HttpRequestInterceptor;
    .locals 1

    #@0
    sget-object v0, Landroid/net/http/AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "logAuthToken"    # Z

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/net/http/AndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 79
    const-wide/16 v0, 0x100

    #@2
    sput-wide v0, Landroid/net/http/AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    #@4
    .line 86
    const/4 v0, 0x3

    #@5
    new-array v0, v0, [Ljava/lang/String;

    #@7
    .line 87
    const-string/jumbo v1, "text/"

    #@a
    const/4 v2, 0x0

    #@b
    aput-object v1, v0, v2

    #@d
    .line 88
    const-string/jumbo v1, "application/xml"

    #@10
    const/4 v2, 0x1

    #@11
    aput-object v1, v0, v2

    #@13
    .line 89
    const-string/jumbo v1, "application/json"

    #@16
    const/4 v2, 0x2

    #@17
    aput-object v1, v0, v2

    #@19
    .line 86
    sput-object v0, Landroid/net/http/AndroidHttpClient;->textContentTypes:[Ljava/lang/String;

    #@1b
    .line 94
    new-instance v0, Landroid/net/http/AndroidHttpClient$1;

    #@1d
    invoke-direct {v0}, Landroid/net/http/AndroidHttpClient$1;-><init>()V

    #@20
    .line 93
    sput-object v0, Landroid/net/http/AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    #@22
    .line 76
    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "ccm"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    .line 157
    const-string/jumbo v1, "AndroidHttpClient created and never closed"

    #@8
    .line 156
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@d
    .line 160
    new-instance v0, Landroid/net/http/AndroidHttpClient$2;

    #@f
    invoke-direct {v0, p0, p1, p2}, Landroid/net/http/AndroidHttpClient$2;-><init>(Landroid/net/http/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    #@12
    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@14
    .line 159
    return-void
.end method

.method public static getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 8
    .param p0, "data"    # [B
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 302
    array-length v3, p0

    #@1
    int-to-long v4, v3

    #@2
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->getMinGzipSize(Landroid/content/ContentResolver;)J

    #@5
    move-result-wide v6

    #@6
    cmp-long v3, v4, v6

    #@8
    if-gez v3, :cond_0

    #@a
    .line 303
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    #@c
    invoke-direct {v1, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    #@f
    .line 312
    .local v1, "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    :goto_0
    return-object v1

    #@10
    .line 305
    .end local v1    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@12
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@15
    .line 306
    .local v0, "arr":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    #@17
    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@1a
    .line 307
    .local v2, "zipper":Ljava/io/OutputStream;
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 308
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    #@20
    .line 309
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    #@22
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@25
    move-result-object v3

    #@26
    invoke-direct {v1, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    #@29
    .line 310
    .restart local v1    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    const-string/jumbo v3, "gzip"

    #@2c
    invoke-virtual {v1, v3}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    #@2f
    goto :goto_0
.end method

.method public static getMinGzipSize(Landroid/content/ContentResolver;)J
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 320
    sget-wide v0, Landroid/net/http/AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    #@2
    return-wide v0
.end method

.method public static getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .locals 5
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    #@3
    move-result-object v2

    #@4
    .line 220
    .local v2, "responseStream":Ljava/io/InputStream;
    if-nez v2, :cond_0

    #@6
    return-object v2

    #@7
    .line 221
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    #@a
    move-result-object v1

    #@b
    .line 222
    .local v1, "header":Lorg/apache/http/Header;
    if-nez v1, :cond_1

    #@d
    return-object v2

    #@e
    .line 223
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 224
    .local v0, "contentEncoding":Ljava/lang/String;
    if-nez v0, :cond_2

    #@14
    return-object v2

    #@15
    .line 225
    :cond_2
    const-string/jumbo v4, "gzip"

    #@18
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_3

    #@1e
    .line 226
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    #@20
    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    #@23
    .end local v2    # "responseStream":Ljava/io/InputStream;
    .local v3, "responseStream":Ljava/io/InputStream;
    move-object v2, v3

    #@24
    .line 227
    .end local v3    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStream":Ljava/io/InputStream;
    :cond_3
    return-object v2
.end method

.method private static isBinaryContent(Lorg/apache/http/client/methods/HttpUriRequest;)Z
    .locals 11
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 468
    const-string/jumbo v3, "content-encoding"

    #@5
    invoke-interface {p0, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    #@8
    move-result-object v2

    #@9
    .line 469
    .local v2, "headers":[Lorg/apache/http/Header;
    if-eqz v2, :cond_1

    #@b
    .line 470
    array-length v5, v2

    #@c
    move v3, v4

    #@d
    :goto_0
    if-ge v3, v5, :cond_1

    #@f
    aget-object v1, v2, v3

    #@11
    .line 471
    .local v1, "header":Lorg/apache/http/Header;
    const-string/jumbo v6, "gzip"

    #@14
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@17
    move-result-object v7

    #@18
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_0

    #@1e
    .line 472
    return v10

    #@1f
    .line 470
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@21
    goto :goto_0

    #@22
    .line 477
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_1
    const-string/jumbo v3, "content-type"

    #@25
    invoke-interface {p0, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    #@28
    move-result-object v2

    #@29
    .line 478
    if-eqz v2, :cond_4

    #@2b
    .line 479
    array-length v6, v2

    #@2c
    move v5, v4

    #@2d
    :goto_1
    if-ge v5, v6, :cond_4

    #@2f
    aget-object v1, v2, v5

    #@31
    .line 480
    .restart local v1    # "header":Lorg/apache/http/Header;
    sget-object v7, Landroid/net/http/AndroidHttpClient;->textContentTypes:[Ljava/lang/String;

    #@33
    array-length v8, v7

    #@34
    move v3, v4

    #@35
    :goto_2
    if-ge v3, v8, :cond_3

    #@37
    aget-object v0, v7, v3

    #@39
    .line 481
    .local v0, "contentType":Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@3c
    move-result-object v9

    #@3d
    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@40
    move-result v9

    #@41
    if-eqz v9, :cond_2

    #@43
    .line 482
    return v4

    #@44
    .line 480
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@46
    goto :goto_2

    #@47
    .line 479
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v5, 0x1

    #@49
    move v5, v3

    #@4a
    goto :goto_1

    #@4b
    .line 487
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_4
    return v10
.end method

.method public static modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V
    .locals 2
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    #@0
    .prologue
    .line 206
    const-string/jumbo v0, "Accept-Encoding"

    #@3
    const-string/jumbo v1, "gzip"

    #@6
    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 205
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;
    .locals 1
    .param p0, "userAgent"    # Ljava/lang/String;

    #@0
    .prologue
    .line 151
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .locals 9
    .param p0, "userAgent"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const v8, 0xea60

    #@4
    .line 111
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    #@6
    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    #@9
    .line 115
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    #@c
    .line 117
    invoke-static {v1, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    #@f
    .line 118
    invoke-static {v1, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    #@12
    .line 119
    const/16 v4, 0x2000

    #@14
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    #@17
    .line 123
    invoke-static {v1, v5}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    #@1a
    .line 126
    if-nez p1, :cond_0

    #@1c
    const/4 v3, 0x0

    #@1d
    .line 129
    :goto_0
    invoke-static {v1, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    #@20
    .line 130
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@22
    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    #@25
    .line 131
    .local v2, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    #@27
    const-string/jumbo v5, "http"

    #@2a
    .line 132
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    #@2d
    move-result-object v6

    #@2e
    const/16 v7, 0x50

    #@30
    .line 131
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    #@33
    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    #@36
    .line 133
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    #@38
    const-string/jumbo v5, "https"

    #@3b
    .line 134
    invoke-static {v8, v3}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    #@3e
    move-result-object v6

    #@3f
    .line 135
    const/16 v7, 0x1bb

    #@41
    .line 133
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    #@44
    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    #@47
    .line 138
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    #@49
    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    #@4c
    .line 142
    .local v0, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v4, Landroid/net/http/AndroidHttpClient;

    #@4e
    invoke-direct {v4, v0, v1}, Landroid/net/http/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    #@51
    return-object v4

    #@52
    .line 126
    .end local v0    # "manager":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    new-instance v3, Landroid/net/SSLSessionCache;

    #@54
    invoke-direct {v3, p1}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    #@57
    .local v3, "sessionCache":Landroid/net/SSLSessionCache;
    goto :goto_0
.end method

.method public static parseDate(Ljava/lang/String;)J
    .locals 2
    .param p0, "dateString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 505
    invoke-static {p0}, Landroid/net/http/LegacyHttpDateTime;->parse(Ljava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method private static toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 14
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "logAuthToken"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 404
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "curl "

    #@8
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 407
    const-string/jumbo v9, "-X "

    #@e
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 408
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    #@14
    move-result-object v9

    #@15
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 409
    const-string/jumbo v9, " "

    #@1b
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 411
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    #@21
    move-result-object v10

    #@22
    const/4 v9, 0x0

    #@23
    array-length v11, v10

    #@24
    :goto_0
    if-ge v9, v11, :cond_2

    #@26
    aget-object v5, v10, v9

    #@28
    .line 412
    .local v5, "header":Lorg/apache/http/Header;
    if-nez p1, :cond_1

    #@2a
    .line 413
    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@2d
    move-result-object v12

    #@2e
    const-string/jumbo v13, "Authorization"

    #@31
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v12

    #@35
    if-nez v12, :cond_0

    #@37
    .line 414
    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@3a
    move-result-object v12

    #@3b
    const-string/jumbo v13, "Cookie"

    #@3e
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v12

    #@42
    .line 412
    if-eqz v12, :cond_1

    #@44
    .line 411
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    #@46
    goto :goto_0

    #@47
    .line 417
    :cond_1
    const-string/jumbo v12, "--header \""

    #@4a
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 418
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@50
    move-result-object v12

    #@51
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@54
    move-result-object v12

    #@55
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 419
    const-string/jumbo v12, "\" "

    #@5b
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    goto :goto_1

    #@5f
    .line 422
    .end local v5    # "header":Lorg/apache/http/Header;
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    #@62
    move-result-object v8

    #@63
    .line 427
    .local v8, "uri":Ljava/net/URI;
    instance-of v9, p0, Lorg/apache/http/impl/client/RequestWrapper;

    #@65
    if-eqz v9, :cond_3

    #@67
    move-object v9, p0

    #@68
    .line 428
    check-cast v9, Lorg/apache/http/impl/client/RequestWrapper;

    #@6a
    invoke-virtual {v9}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    #@6d
    move-result-object v6

    #@6e
    .line 429
    .local v6, "original":Lorg/apache/http/HttpRequest;
    instance-of v9, v6, Lorg/apache/http/client/methods/HttpUriRequest;

    #@70
    if-eqz v9, :cond_3

    #@72
    .line 430
    check-cast v6, Lorg/apache/http/client/methods/HttpUriRequest;

    #@74
    .end local v6    # "original":Lorg/apache/http/HttpRequest;
    invoke-interface {v6}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    #@77
    move-result-object v8

    #@78
    .line 434
    :cond_3
    const-string/jumbo v9, "\""

    #@7b
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    .line 435
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@81
    .line 436
    const-string/jumbo v9, "\""

    #@84
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 438
    instance-of v9, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@89
    if-eqz v9, :cond_4

    #@8b
    move-object v3, p0

    #@8c
    .line 440
    check-cast v3, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@8e
    .line 441
    .local v3, "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    #@91
    move-result-object v2

    #@92
    .line 442
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_4

    #@94
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    #@97
    move-result v9

    #@98
    if-eqz v9, :cond_4

    #@9a
    .line 443
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@9d
    move-result-wide v10

    #@9e
    const-wide/16 v12, 0x400

    #@a0
    cmp-long v9, v10, v12

    #@a2
    if-gez v9, :cond_6

    #@a4
    .line 444
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    #@a6
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@a9
    .line 445
    .local v7, "stream":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v2, v7}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    #@ac
    .line 447
    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->isBinaryContent(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    #@af
    move-result v9

    #@b0
    if-eqz v9, :cond_5

    #@b2
    .line 448
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@b5
    move-result-object v9

    #@b6
    const/4 v10, 0x2

    #@b7
    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@ba
    move-result-object v0

    #@bb
    .line 449
    .local v0, "base64":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v10, "echo \'"

    #@c3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v9

    #@c7
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v9

    #@cb
    const-string/jumbo v10, "\' | base64 -d > /tmp/$$.bin; "

    #@ce
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v9

    #@d2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v9

    #@d6
    const/4 v10, 0x0

    #@d7
    invoke-virtual {v1, v10, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    .line 450
    const-string/jumbo v9, " --data-binary @/tmp/$$.bin"

    #@dd
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    .line 463
    .end local v0    # "base64":Ljava/lang/String;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v7    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v9

    #@e4
    return-object v9

    #@e5
    .line 452
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v3    # "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    .restart local v7    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_5
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    #@e8
    move-result-object v4

    #@e9
    .line 453
    .local v4, "entityString":Ljava/lang/String;
    const-string/jumbo v9, " --data-ascii \""

    #@ec
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v9

    #@f0
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v9

    #@f4
    .line 455
    const-string/jumbo v10, "\""

    #@f7
    .line 453
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    goto :goto_2

    #@fb
    .line 458
    .end local v4    # "entityString":Ljava/lang/String;
    .end local v7    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_6
    const-string/jumbo v9, " [TOO MUCH DATA TO INCLUDE]"

    #@fe
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 235
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 236
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    #@c
    .line 237
    iput-object v1, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@e
    .line 234
    :cond_0
    return-void
.end method

.method public disableCurlLogging()V
    .locals 1

    #@0
    .prologue
    .line 378
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->curlConfiguration:Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    #@3
    .line 377
    return-void
.end method

.method public enableCurlLogging(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 363
    if-nez p1, :cond_0

    #@3
    .line 364
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "name"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 366
    :cond_0
    const/4 v0, 0x2

    #@d
    if-lt p2, v0, :cond_1

    #@f
    const/4 v0, 0x7

    #@10
    if-le p2, v0, :cond_2

    #@12
    .line 367
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Level is out of range [2..7]"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 371
    :cond_2
    new-instance v0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    #@1d
    invoke-direct {v0, p1, p2, v1}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;ILandroid/net/http/AndroidHttpClient$LoggingConfiguration;)V

    #@20
    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->curlConfiguration:Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    #@22
    .line 362
    return-void
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 283
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 289
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 271
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 192
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@4
    .line 193
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 194
    const-string/jumbo v0, "AndroidHttpClient"

    #@b
    const-string/jumbo v1, "Leak found"

    #@e
    iget-object v2, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@10
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 195
    iput-object v3, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@15
    .line 191
    :cond_0
    return-void
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
