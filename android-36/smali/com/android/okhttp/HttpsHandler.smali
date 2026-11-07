.class public final Lcom/android/okhttp/HttpsHandler;
.super Lcom/android/okhttp/HttpHandler;
.source "HttpsHandler.java"


# static fields
.field private static final blacklist HTTP_1_1_ONLY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TLS_CONNECTION_SPEC:Lcom/android/okhttp/ConnectionSpec;


# instance fields
.field private final blacklist configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const/4 v0, 0x1

    .line 41
    invoke-static {v0}, Lcom/android/okhttp/ConnectionSpecs;->builder(Z)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->allEnabledCipherSuites()Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->allEnabledTlsVersions()Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/HttpsHandler;->TLS_CONNECTION_SPEC:Lcom/android/okhttp/ConnectionSpec;

    .line 47
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    .line 48
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/HttpsHandler;->HTTP_1_1_ONLY:Ljava/util/List;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/android/okhttp/HttpHandler;-><init>()V

    .line 51
    invoke-static {}, Lcom/android/okhttp/ConfigAwareConnectionPool;->getInstance()Lcom/android/okhttp/ConfigAwareConnectionPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpsHandler;->configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;

    return-void
.end method

.method public static blacklist createHttpsOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;
    .registers 4

    .line 78
    invoke-static {p0}, Lcom/android/okhttp/HttpHandler;->createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object p0

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, v0}, Lcom/android/okhttp/OkUrlFactories;->setUrlFilter(Lcom/android/okhttp/OkUrlFactory;Lcom/android/okhttp/internal/URLFilter;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    .line 86
    sget-object v1, Lcom/android/okhttp/HttpsHandler;->HTTP_1_1_ONLY:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    .line 88
    sget-object v1, Lcom/android/okhttp/HttpsHandler;->TLS_CONNECTION_SPEC:Lcom/android/okhttp/ConnectionSpec;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/OkHttpClient;->setConnectionSpecs(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    .line 94
    sget-object v1, Lcom/android/okhttp/CertificatePinner;->DEFAULT:Lcom/android/okhttp/CertificatePinner;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/OkHttpClient;->setCertificatePinner(Lcom/android/okhttp/CertificatePinner;)Lcom/android/okhttp/OkHttpClient;

    .line 98
    invoke-virtual {p0}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    move-result-object v1

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/OkHttpClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/android/okhttp/OkHttpClient;

    .line 102
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/OkHttpClient;

    return-object p0
.end method


# virtual methods
.method protected whitelist test-api getDefaultPort()I
    .registers 1

    .line 0
    const/16 p0, 0x1bb

    return p0
.end method

.method protected blacklist newOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;
    .registers 3

    .line 63
    invoke-static {p1}, Lcom/android/okhttp/HttpsHandler;->createHttpsOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    iget-object p0, p0, Lcom/android/okhttp/HttpsHandler;->configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;

    invoke-virtual {p0}, Lcom/android/okhttp/ConfigAwareConnectionPool;->get()Lcom/android/okhttp/ConnectionPool;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/okhttp/OkHttpClient;->setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;

    return-object p1
.end method
