.class public final Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$CurlLogger;,
        Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;
    }
.end annotation


# static fields
.field public static DEFAULT_SYNC_MIN_GZIP_BYTES:J

.field private static final sThreadBlocked:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private volatile curlConfiguration:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;

.field private final delegate:Lorg/apache/http/client/HttpClient;

.field private mLeakedException:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, 0x100

    #@2
    .line 81
    sput-wide v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    #@4
    .line 87
    new-instance v0, Ljava/lang/ThreadLocal;

    #@6
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@9
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->sThreadBlocked:Ljava/lang/ThreadLocal;

    #@b
    .line 91
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$1;

    #@d
    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$1;-><init>()V

    #@10
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    #@12
    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "ccm"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    const-string/jumbo v1, "AndroidHttpClient_v09 created and never closed"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@d
    .line 142
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$2;

    #@f
    invoke-direct {v0, p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$2;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    #@12
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@14
    .line 170
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    #@0
    .prologue
    .line 78
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->sThreadBlocked:Ljava/lang/ThreadLocal;

    #@2
    return-object v0
.end method

.method static synthetic access$100()Lorg/apache/http/HttpRequestInterceptor;
    .locals 1

    #@0
    .prologue
    .line 78
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    #@2
    return-object v0
.end method

.method static synthetic access$400(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;)Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->curlConfiguration:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;

    #@2
    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;
    .locals 7
    .param p0, "userAgent"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x4e20

    #@2
    const/4 v4, 0x0

    #@3
    .line 106
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    #@5
    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    #@8
    .line 110
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    #@b
    .line 113
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    #@e
    .line 114
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    #@11
    const/16 v3, 0x2000

    #@13
    .line 115
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    #@16
    .line 119
    invoke-static {v1, v4}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    #@19
    .line 122
    invoke-static {v1, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    #@1c
    .line 123
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@1e
    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    #@21
    .line 124
    .local v2, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    #@23
    const-string/jumbo v4, "http"

    #@26
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    #@29
    move-result-object v5

    #@2a
    const/16 v6, 0x50

    #@2c
    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    #@2f
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    #@32
    .line 126
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    #@34
    const-string/jumbo v4, "https"

    #@37
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    #@3a
    move-result-object v5

    #@3b
    const/16 v6, 0x1bb

    #@3d
    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    #@40
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    #@43
    .line 128
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    #@45
    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    #@48
    .line 133
    .local v0, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #@4a
    invoke-direct {v3, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    #@4d
    return-object v3
.end method

.method private static toCurl(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .locals 18
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .local v3, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v13, "curl "

    #@8
    .line 410
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 412
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    #@e
    move-result-object v2

    #@f
    .local v2, "arr$":[Lorg/apache/http/Header;
    array-length v9, v2

    #@10
    .local v9, "len$":I
    const/4 v8, 0x0

    #@11
    .local v8, "i$":I
    :goto_0
    if-lt v8, v9, :cond_2

    #@13
    .line 418
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    #@16
    move-result-object v12

    #@17
    .line 423
    .local v12, "uri":Ljava/net/URI;
    move-object/from16 v0, p0

    #@19
    instance-of v13, v0, Lorg/apache/http/impl/client/RequestWrapper;

    #@1b
    if-nez v13, :cond_3

    #@1d
    :cond_0
    :goto_1
    const-string/jumbo v13, "\""

    #@20
    .line 430
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 431
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    const-string/jumbo v13, "\""

    #@29
    .line 432
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 434
    move-object/from16 v0, p0

    #@2e
    instance-of v13, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@30
    if-nez v13, :cond_4

    #@32
    .line 454
    :cond_1
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v13

    #@36
    return-object v13

    #@37
    .line 412
    .end local v12    # "uri":Ljava/net/URI;
    :cond_2
    aget-object v7, v2, v8

    #@39
    .local v7, "header":Lorg/apache/http/Header;
    const-string/jumbo v13, "--header \""

    #@3c
    .line 413
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 414
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@42
    move-result-object v13

    #@43
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@46
    move-result-object v13

    #@47
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    const-string/jumbo v13, "\" "

    #@4d
    .line 415
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    .line 412
    add-int/lit8 v8, v8, 0x1

    #@52
    goto :goto_0

    #@53
    .end local v7    # "header":Lorg/apache/http/Header;
    .restart local v12    # "uri":Ljava/net/URI;
    :cond_3
    move-object/from16 v13, p0

    #@55
    .line 424
    check-cast v13, Lorg/apache/http/impl/client/RequestWrapper;

    #@57
    invoke-virtual {v13}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    #@5a
    move-result-object v10

    #@5b
    .line 425
    .local v10, "original":Lorg/apache/http/HttpRequest;
    instance-of v13, v10, Lorg/apache/http/client/methods/HttpUriRequest;

    #@5d
    if-eqz v13, :cond_0

    #@5f
    .line 426
    check-cast v10, Lorg/apache/http/client/methods/HttpUriRequest;

    #@61
    .end local v10    # "original":Lorg/apache/http/HttpRequest;
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    #@64
    move-result-object v12

    #@65
    goto :goto_1

    #@66
    :cond_4
    move-object/from16 v5, p0

    #@68
    .line 435
    check-cast v5, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@6a
    .line 437
    .local v5, "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v5}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    #@6d
    move-result-object v4

    #@6e
    .line 438
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_1

    #@70
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    #@73
    move-result v13

    #@74
    if-eqz v13, :cond_1

    #@76
    .line 439
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@79
    move-result-wide v14

    #@7a
    const-wide/16 v16, 0x400

    #@7c
    cmp-long v13, v14, v16

    #@7e
    if-ltz v13, :cond_5

    #@80
    const/4 v13, 0x1

    #@81
    :goto_3
    if-nez v13, :cond_6

    #@83
    .line 440
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    #@85
    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@88
    .line 441
    .local v11, "stream":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v4, v11}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    #@8b
    .line 442
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    #@8e
    move-result-object v6

    #@8f
    .local v6, "entityString":Ljava/lang/String;
    const-string/jumbo v13, " --data-ascii \""

    #@92
    .line 445
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v13

    #@96
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v13

    #@9a
    const-string/jumbo v14, "\""

    #@9d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    goto :goto_2

    #@a1
    .line 439
    .end local v6    # "entityString":Ljava/lang/String;
    .end local v11    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_5
    const/4 v13, 0x0

    #@a2
    goto :goto_3

    #@a3
    :cond_6
    const-string/jumbo v13, " [TOO MUCH DATA TO INCLUDE]"

    #@a6
    .line 449
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 226
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 230
    :goto_0
    return-void

    #@6
    .line 227
    :cond_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    #@d
    .line 228
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@f
    goto :goto_0
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
    .line 274
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

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
    .line 280
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

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
    .line 262
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

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
    .line 268
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

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
    .line 251
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

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
    .line 256
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

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
    .line 241
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

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
    .line 246
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

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
    .line 174
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@4
    .line 175
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 179
    :goto_0
    return-void

    #@9
    :cond_0
    const-string/jumbo v0, "AndroidHttpClient_v09"

    #@c
    const-string/jumbo v1, "Leak found"

    #@f
    .line 176
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@11
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 177
    iput-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    #@16
    goto :goto_0
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

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
    .line 233
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    #@2
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
