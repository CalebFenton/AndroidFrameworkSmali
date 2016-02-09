.class public final Lcom/android/okhttp/HttpsHandler;
.super Lcom/android/okhttp/HttpHandler;
.source "HttpsHandler.java"


# static fields
.field private static final HTTP_1_1_ONLY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECURE_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final SSL_3_0:Lcom/android/okhttp/ConnectionSpec;

.field private static final TLS_1_0_AND_BELOW:Lcom/android/okhttp/ConnectionSpec;

.field private static final TLS_1_1_AND_BELOW:Lcom/android/okhttp/ConnectionSpec;

.field private static final TLS_1_2_AND_BELOW:Lcom/android/okhttp/ConnectionSpec;


# instance fields
.field private final configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v3, 0x1

    #@5
    .line 37
    new-instance v0, Lcom/android/okhttp/ConnectionSpec$Builder;

    #@7
    invoke-direct {v0, v3}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Z)V

    #@a
    new-array v1, v7, [Lcom/android/okhttp/TlsVersion;

    #@c
    .line 38
    sget-object v2, Lcom/android/okhttp/TlsVersion;->TLS_1_2:Lcom/android/okhttp/TlsVersion;

    #@e
    aput-object v2, v1, v4

    #@10
    sget-object v2, Lcom/android/okhttp/TlsVersion;->TLS_1_1:Lcom/android/okhttp/TlsVersion;

    #@12
    aput-object v2, v1, v3

    #@14
    sget-object v2, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    #@16
    aput-object v2, v1, v5

    #@18
    sget-object v2, Lcom/android/okhttp/TlsVersion;->SSL_3_0:Lcom/android/okhttp/TlsVersion;

    #@1a
    aput-object v2, v1, v6

    #@1c
    .line 37
    invoke-virtual {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/android/okhttp/TlsVersion;)Lcom/android/okhttp/ConnectionSpec$Builder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, v3}, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/android/okhttp/ConnectionSpec$Builder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    #@27
    move-result-object v0

    #@28
    sput-object v0, Lcom/android/okhttp/HttpsHandler;->TLS_1_2_AND_BELOW:Lcom/android/okhttp/ConnectionSpec;

    #@2a
    .line 43
    new-instance v0, Lcom/android/okhttp/ConnectionSpec$Builder;

    #@2c
    sget-object v1, Lcom/android/okhttp/HttpsHandler;->TLS_1_2_AND_BELOW:Lcom/android/okhttp/ConnectionSpec;

    #@2e
    invoke-direct {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Lcom/android/okhttp/ConnectionSpec;)V

    #@31
    new-array v1, v6, [Lcom/android/okhttp/TlsVersion;

    #@33
    .line 44
    sget-object v2, Lcom/android/okhttp/TlsVersion;->TLS_1_1:Lcom/android/okhttp/TlsVersion;

    #@35
    aput-object v2, v1, v4

    #@37
    sget-object v2, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    #@39
    aput-object v2, v1, v3

    #@3b
    sget-object v2, Lcom/android/okhttp/TlsVersion;->SSL_3_0:Lcom/android/okhttp/TlsVersion;

    #@3d
    aput-object v2, v1, v5

    #@3f
    .line 43
    invoke-virtual {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/android/okhttp/TlsVersion;)Lcom/android/okhttp/ConnectionSpec$Builder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0, v3}, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/android/okhttp/ConnectionSpec$Builder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    #@4a
    move-result-object v0

    #@4b
    .line 42
    sput-object v0, Lcom/android/okhttp/HttpsHandler;->TLS_1_1_AND_BELOW:Lcom/android/okhttp/ConnectionSpec;

    #@4d
    .line 49
    new-instance v0, Lcom/android/okhttp/ConnectionSpec$Builder;

    #@4f
    sget-object v1, Lcom/android/okhttp/HttpsHandler;->TLS_1_2_AND_BELOW:Lcom/android/okhttp/ConnectionSpec;

    #@51
    invoke-direct {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Lcom/android/okhttp/ConnectionSpec;)V

    #@54
    new-array v1, v5, [Lcom/android/okhttp/TlsVersion;

    #@56
    .line 50
    sget-object v2, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    #@58
    aput-object v2, v1, v4

    #@5a
    sget-object v2, Lcom/android/okhttp/TlsVersion;->SSL_3_0:Lcom/android/okhttp/TlsVersion;

    #@5c
    aput-object v2, v1, v3

    #@5e
    .line 49
    invoke-virtual {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/android/okhttp/TlsVersion;)Lcom/android/okhttp/ConnectionSpec$Builder;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    #@65
    move-result-object v0

    #@66
    .line 48
    sput-object v0, Lcom/android/okhttp/HttpsHandler;->TLS_1_0_AND_BELOW:Lcom/android/okhttp/ConnectionSpec;

    #@68
    .line 54
    new-instance v0, Lcom/android/okhttp/ConnectionSpec$Builder;

    #@6a
    sget-object v1, Lcom/android/okhttp/HttpsHandler;->TLS_1_2_AND_BELOW:Lcom/android/okhttp/ConnectionSpec;

    #@6c
    invoke-direct {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Lcom/android/okhttp/ConnectionSpec;)V

    #@6f
    new-array v1, v3, [Lcom/android/okhttp/TlsVersion;

    #@71
    .line 55
    sget-object v2, Lcom/android/okhttp/TlsVersion;->SSL_3_0:Lcom/android/okhttp/TlsVersion;

    #@73
    aput-object v2, v1, v4

    #@75
    .line 54
    invoke-virtual {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/android/okhttp/TlsVersion;)Lcom/android/okhttp/ConnectionSpec$Builder;

    #@78
    move-result-object v0

    #@79
    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    #@7c
    move-result-object v0

    #@7d
    .line 53
    sput-object v0, Lcom/android/okhttp/HttpsHandler;->SSL_3_0:Lcom/android/okhttp/ConnectionSpec;

    #@7f
    .line 60
    new-array v0, v7, [Lcom/android/okhttp/ConnectionSpec;

    #@81
    sget-object v1, Lcom/android/okhttp/HttpsHandler;->TLS_1_2_AND_BELOW:Lcom/android/okhttp/ConnectionSpec;

    #@83
    aput-object v1, v0, v4

    #@85
    sget-object v1, Lcom/android/okhttp/HttpsHandler;->TLS_1_1_AND_BELOW:Lcom/android/okhttp/ConnectionSpec;

    #@87
    aput-object v1, v0, v3

    #@89
    sget-object v1, Lcom/android/okhttp/HttpsHandler;->TLS_1_0_AND_BELOW:Lcom/android/okhttp/ConnectionSpec;

    #@8b
    aput-object v1, v0, v5

    #@8d
    sget-object v1, Lcom/android/okhttp/HttpsHandler;->SSL_3_0:Lcom/android/okhttp/ConnectionSpec;

    #@8f
    aput-object v1, v0, v6

    #@91
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@94
    move-result-object v0

    #@95
    .line 59
    sput-object v0, Lcom/android/okhttp/HttpsHandler;->SECURE_CONNECTION_SPECS:Ljava/util/List;

    #@97
    .line 62
    new-array v0, v3, [Lcom/android/okhttp/Protocol;

    #@99
    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    #@9b
    aput-object v1, v0, v4

    #@9d
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@a0
    move-result-object v0

    #@a1
    sput-object v0, Lcom/android/okhttp/HttpsHandler;->HTTP_1_1_ONLY:Ljava/util/List;

    #@a3
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/okhttp/HttpHandler;-><init>()V

    #@3
    .line 65
    invoke-static {}, Lcom/android/okhttp/ConfigAwareConnectionPool;->getInstance()Lcom/android/okhttp/ConfigAwareConnectionPool;

    #@6
    move-result-object v0

    #@7
    .line 64
    iput-object v0, p0, Lcom/android/okhttp/HttpsHandler;->configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;

    #@9
    .line 26
    return-void
.end method

.method public static createHttpsOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;
    .locals 4
    .param p0, "proxy"    # Ljava/net/Proxy;

    #@0
    .prologue
    .line 88
    invoke-static {p0}, Lcom/android/okhttp/HttpHandler;->createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    #@3
    move-result-object v1

    #@4
    .line 90
    .local v1, "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    invoke-virtual {v1}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    #@7
    move-result-object v0

    #@8
    .line 93
    .local v0, "okHttpClient":Lcom/android/okhttp/OkHttpClient;
    sget-object v2, Lcom/android/okhttp/HttpsHandler;->HTTP_1_1_ONLY:Ljava/util/List;

    #@a
    invoke-virtual {v0, v2}, Lcom/android/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    #@d
    .line 96
    sget-object v2, Lcom/android/okhttp/HttpsHandler;->SECURE_CONNECTION_SPECS:Ljava/util/List;

    #@f
    invoke-virtual {v0, v2}, Lcom/android/okhttp/OkHttpClient;->setConnectionSpecs(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    #@12
    .line 100
    invoke-virtual {v1}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    #@15
    move-result-object v2

    #@16
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Lcom/android/okhttp/OkHttpClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/android/okhttp/OkHttpClient;

    #@1d
    .line 104
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v0, v2}, Lcom/android/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/OkHttpClient;

    #@24
    .line 106
    return-object v1
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    #@0
    .prologue
    .line 68
    const/16 v0, 0x1bb

    #@2
    return v0
.end method

.method protected newOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;
    .locals 3
    .param p1, "proxy"    # Ljava/net/Proxy;

    #@0
    .prologue
    .line 73
    invoke-static {p1}, Lcom/android/okhttp/HttpsHandler;->createHttpsOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    #@3
    move-result-object v0

    #@4
    .line 77
    .local v0, "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    invoke-virtual {v0}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Lcom/android/okhttp/HttpsHandler;->configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;

    #@a
    invoke-virtual {v2}, Lcom/android/okhttp/ConfigAwareConnectionPool;->get()Lcom/android/okhttp/ConnectionPool;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Lcom/android/okhttp/OkHttpClient;->setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;

    #@11
    .line 78
    return-object v0
.end method
