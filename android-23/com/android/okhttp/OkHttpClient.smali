.class public Lcom/android/okhttp/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/OkHttpClient$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private authenticator:Lcom/android/okhttp/Authenticator;

.field private cache:Lcom/android/okhttp/Cache;

.field private certificatePinner:Lcom/android/okhttp/CertificatePinner;

.field private connectTimeout:I

.field private connectionPool:Lcom/android/okhttp/ConnectionPool;

.field private connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private cookieHandler:Ljava/net/CookieHandler;

.field private dispatcher:Lcom/android/okhttp/Dispatcher;

.field private followRedirects:Z

.field private followSslRedirects:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private internalCache:Lcom/android/okhttp/internal/InternalCache;

.field private network:Lcom/android/okhttp/internal/Network;

.field private final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Ljava/net/Proxy;

.field private proxySelector:Ljava/net/ProxySelector;

.field private readTimeout:I

.field private retryOnConnectionFailure:Z

.field private final routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

.field private socketFactory:Ljavax/net/SocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private writeTimeout:I


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/Network;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->network:Lcom/android/okhttp/internal/Network;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/Network;)Lcom/android/okhttp/internal/Network;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->network:Lcom/android/okhttp/internal/Network;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 57
    new-array v0, v5, [Lcom/android/okhttp/Protocol;

    #@6
    .line 58
    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    #@8
    aput-object v1, v0, v2

    #@a
    sget-object v1, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    #@c
    aput-object v1, v0, v3

    #@e
    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    #@10
    aput-object v1, v0, v4

    #@12
    .line 57
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/android/okhttp/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    #@18
    .line 60
    new-array v0, v5, [Lcom/android/okhttp/ConnectionSpec;

    #@1a
    .line 61
    sget-object v1, Lcom/android/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/android/okhttp/ConnectionSpec;

    #@1c
    aput-object v1, v0, v2

    #@1e
    sget-object v1, Lcom/android/okhttp/ConnectionSpec;->COMPATIBLE_TLS:Lcom/android/okhttp/ConnectionSpec;

    #@20
    aput-object v1, v0, v3

    #@22
    sget-object v1, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    #@24
    aput-object v1, v0, v4

    #@26
    .line 60
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    #@29
    move-result-object v0

    #@2a
    sput-object v0, Lcom/android/okhttp/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    #@2c
    .line 64
    new-instance v0, Lcom/android/okhttp/OkHttpClient$1;

    #@2e
    invoke-direct {v0}, Lcom/android/okhttp/OkHttpClient$1;-><init>()V

    #@31
    sput-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@33
    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    #@b
    .line 172
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    #@12
    .line 187
    iput-boolean v1, p0, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    #@14
    .line 188
    iput-boolean v1, p0, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    #@16
    .line 189
    iput-boolean v1, p0, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    #@18
    .line 195
    new-instance v0, Lcom/android/okhttp/internal/RouteDatabase;

    #@1a
    invoke-direct {v0}, Lcom/android/okhttp/internal/RouteDatabase;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    #@1f
    .line 196
    new-instance v0, Lcom/android/okhttp/Dispatcher;

    #@21
    invoke-direct {v0}, Lcom/android/okhttp/Dispatcher;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    #@26
    .line 194
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/OkHttpClient;)V
    .locals 2
    .param p1, "okHttpClient"    # Lcom/android/okhttp/OkHttpClient;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    #@b
    .line 172
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    #@12
    .line 187
    iput-boolean v1, p0, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    #@14
    .line 188
    iput-boolean v1, p0, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    #@16
    .line 189
    iput-boolean v1, p0, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    #@18
    .line 200
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    #@1a
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    #@1c
    .line 201
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    #@1e
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    #@20
    .line 202
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    #@22
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    #@24
    .line 203
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    #@26
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    #@28
    .line 204
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    #@2a
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    #@2c
    .line 205
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    #@2e
    iget-object v1, p1, Lcom/android/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    #@30
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@33
    .line 206
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    #@35
    iget-object v1, p1, Lcom/android/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    #@37
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@3a
    .line 207
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    #@3c
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    #@3e
    .line 208
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    #@40
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    #@42
    .line 209
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    #@44
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    #@46
    .line 210
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    #@48
    if-eqz v0, :cond_0

    #@4a
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    #@4c
    iget-object v0, v0, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    #@4e
    :goto_0
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    #@50
    .line 211
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    #@52
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    #@54
    .line 212
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@56
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@58
    .line 213
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@5a
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@5c
    .line 214
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    #@5e
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    #@60
    .line 215
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    #@62
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    #@64
    .line 216
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    #@66
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    #@68
    .line 217
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->network:Lcom/android/okhttp/internal/Network;

    #@6a
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->network:Lcom/android/okhttp/internal/Network;

    #@6c
    .line 218
    iget-boolean v0, p1, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    #@6e
    iput-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    #@70
    .line 219
    iget-boolean v0, p1, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    #@72
    iput-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    #@74
    .line 220
    iget-boolean v0, p1, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    #@76
    iput-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    #@78
    .line 221
    iget v0, p1, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    #@7a
    iput v0, p0, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    #@7c
    .line 222
    iget v0, p1, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    #@7e
    iput v0, p0, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    #@80
    .line 223
    iget v0, p1, Lcom/android/okhttp/OkHttpClient;->writeTimeout:I

    #@82
    iput v0, p0, Lcom/android/okhttp/OkHttpClient;->writeTimeout:I

    #@84
    .line 199
    return-void

    #@85
    .line 210
    :cond_0
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    #@87
    goto :goto_0
.end method

.method private declared-synchronized getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 658
    :try_start_0
    sget-object v2, Lcom/android/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v2, :cond_0

    #@5
    .line 660
    :try_start_1
    const-string/jumbo v2, "TLS"

    #@8
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    #@b
    move-result-object v1

    #@c
    .line 661
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x0

    #@f
    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    #@12
    .line 662
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@15
    move-result-object v2

    #@16
    sput-object v2, Lcom/android/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    .line 667
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_0
    :try_start_2
    sget-object v2, Lcom/android/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    return-object v2

    #@1c
    .line 663
    :catch_0
    move-exception v0

    #@1d
    .line 664
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :try_start_3
    new-instance v2, Ljava/lang/AssertionError;

    #@1f
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@22
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@23
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v2

    #@24
    monitor-exit p0

    #@25
    throw v2
.end method


# virtual methods
.method public cancel(Ljava/lang/Object;)Lcom/android/okhttp/OkHttpClient;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/okhttp/Dispatcher;->cancel(Ljava/lang/Object;)V

    #@7
    .line 601
    return-object p0
.end method

.method public clone()Lcom/android/okhttp/OkHttpClient;
    .locals 1

    #@0
    .prologue
    .line 672
    new-instance v0, Lcom/android/okhttp/OkHttpClient;

    #@2
    invoke-direct {v0, p0}, Lcom/android/okhttp/OkHttpClient;-><init>(Lcom/android/okhttp/OkHttpClient;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->clone()Lcom/android/okhttp/OkHttpClient;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method copyWithDefaults()Lcom/android/okhttp/OkHttpClient;
    .locals 2

    #@0
    .prologue
    .line 609
    new-instance v0, Lcom/android/okhttp/OkHttpClient;

    #@2
    invoke-direct {v0, p0}, Lcom/android/okhttp/OkHttpClient;-><init>(Lcom/android/okhttp/OkHttpClient;)V

    #@5
    .line 610
    .local v0, "result":Lcom/android/okhttp/OkHttpClient;
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 611
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    #@c
    move-result-object v1

    #@d
    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    #@f
    .line 613
    :cond_0
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    #@11
    if-nez v1, :cond_1

    #@13
    .line 614
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    #@16
    move-result-object v1

    #@17
    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    #@19
    .line 616
    :cond_1
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    #@1b
    if-nez v1, :cond_2

    #@1d
    .line 617
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    #@20
    move-result-object v1

    #@21
    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    #@23
    .line 619
    :cond_2
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@25
    if-nez v1, :cond_3

    #@27
    .line 620
    invoke-direct {p0}, Lcom/android/okhttp/OkHttpClient;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@2a
    move-result-object v1

    #@2b
    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@2d
    .line 622
    :cond_3
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@2f
    if-nez v1, :cond_4

    #@31
    .line 623
    sget-object v1, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/android/okhttp/internal/tls/OkHostnameVerifier;

    #@33
    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@35
    .line 625
    :cond_4
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    #@37
    if-nez v1, :cond_5

    #@39
    .line 626
    sget-object v1, Lcom/android/okhttp/CertificatePinner;->DEFAULT:Lcom/android/okhttp/CertificatePinner;

    #@3b
    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    #@3d
    .line 628
    :cond_5
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    #@3f
    if-nez v1, :cond_6

    #@41
    .line 629
    sget-object v1, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;->INSTANCE:Lcom/android/okhttp/Authenticator;

    #@43
    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    #@45
    .line 631
    :cond_6
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    #@47
    if-nez v1, :cond_7

    #@49
    .line 632
    invoke-static {}, Lcom/android/okhttp/ConnectionPool;->getDefault()Lcom/android/okhttp/ConnectionPool;

    #@4c
    move-result-object v1

    #@4d
    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    #@4f
    .line 634
    :cond_7
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    #@51
    if-nez v1, :cond_8

    #@53
    .line 635
    sget-object v1, Lcom/android/okhttp/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    #@55
    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    #@57
    .line 637
    :cond_8
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    #@59
    if-nez v1, :cond_9

    #@5b
    .line 638
    sget-object v1, Lcom/android/okhttp/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    #@5d
    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    #@5f
    .line 640
    :cond_9
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->network:Lcom/android/okhttp/internal/Network;

    #@61
    if-nez v1, :cond_a

    #@63
    .line 641
    sget-object v1, Lcom/android/okhttp/internal/Network;->DEFAULT:Lcom/android/okhttp/internal/Network;

    #@65
    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->network:Lcom/android/okhttp/internal/Network;

    #@67
    .line 643
    :cond_a
    return-object v0
.end method

.method public getAuthenticator()Lcom/android/okhttp/Authenticator;
    .locals 1

    #@0
    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    #@2
    return-object v0
.end method

.method public getCache()Lcom/android/okhttp/Cache;
    .locals 1

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    #@2
    return-object v0
.end method

.method public getCertificatePinner()Lcom/android/okhttp/CertificatePinner;
    .locals 1

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    #@2
    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    #@0
    .prologue
    .line 243
    iget v0, p0, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    #@2
    return v0
.end method

.method public getConnectionPool()Lcom/android/okhttp/ConnectionPool;
    .locals 1

    #@0
    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    #@2
    return-object v0
.end method

.method public getConnectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getCookieHandler()Ljava/net/CookieHandler;
    .locals 1

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    #@2
    return-object v0
.end method

.method public getDispatcher()Lcom/android/okhttp/Dispatcher;
    .locals 1

    #@0
    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    #@2
    return-object v0
.end method

.method public getFollowRedirects()Z
    .locals 1

    #@0
    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    #@2
    return v0
.end method

.method public getFollowSslRedirects()Z
    .locals 1

    #@0
    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    #@2
    return v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@2
    return-object v0
.end method

.method public getProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    #@2
    return-object v0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .locals 1

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    #@2
    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    #@0
    .prologue
    .line 263
    iget v0, p0, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    #@2
    return v0
.end method

.method public getRetryOnConnectionFailure()Z
    .locals 1

    #@0
    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    #@2
    return v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    #@0
    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    #@2
    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    #@0
    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@2
    return-object v0
.end method

.method public getWriteTimeout()I
    .locals 1

    #@0
    .prologue
    .line 281
    iget v0, p0, Lcom/android/okhttp/OkHttpClient;->writeTimeout:I

    #@2
    return v0
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Interceptor;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    #@2
    return-object v0
.end method

.method internalCache()Lcom/android/okhttp/internal/InternalCache;
    .locals 1

    #@0
    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    #@2
    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Interceptor;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public newCall(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Call;
    .locals 1
    .param p1, "request"    # Lcom/android/okhttp/Request;

    #@0
    .prologue
    .line 592
    new-instance v0, Lcom/android/okhttp/Call;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/Call;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;)V

    #@5
    return-object v0
.end method

.method routeDatabase()Lcom/android/okhttp/internal/RouteDatabase;
    .locals 1

    #@0
    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    #@2
    return-object v0
.end method

.method public setAuthenticator(Lcom/android/okhttp/Authenticator;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "authenticator"    # Lcom/android/okhttp/Authenticator;

    #@0
    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    #@2
    .line 421
    return-object p0
.end method

.method public setCache(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/OkHttpClient;
    .locals 1
    .param p1, "cache"    # Lcom/android/okhttp/Cache;

    #@0
    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    #@2
    .line 345
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    #@5
    .line 346
    return-object p0
.end method

.method public setCertificatePinner(Lcom/android/okhttp/CertificatePinner;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "certificatePinner"    # Lcom/android/okhttp/CertificatePinner;

    #@0
    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    #@2
    .line 405
    return-object p0
.end method

.method public setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 233
    cmp-long v2, p1, v4

    #@4
    if-gez v2, :cond_0

    #@6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v3, "timeout < 0"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 234
    :cond_0
    if-nez p3, :cond_1

    #@11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "unit == null"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 235
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@1d
    move-result-wide v0

    #@1e
    .line 236
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    #@21
    cmp-long v2, v0, v2

    #@23
    if-lez v2, :cond_2

    #@25
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v3, "Timeout too large."

    #@2a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 237
    :cond_2
    cmp-long v2, v0, v4

    #@30
    if-nez v2, :cond_3

    #@32
    cmp-long v2, p1, v4

    #@34
    if-lez v2, :cond_3

    #@36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@38
    const-string/jumbo v3, "Timeout too small."

    #@3b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v2

    #@3f
    .line 238
    :cond_3
    long-to-int v2, v0

    #@40
    iput v2, p0, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    #@42
    .line 232
    return-void
.end method

.method public setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "connectionPool"    # Lcom/android/okhttp/ConnectionPool;

    #@0
    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    #@2
    .line 436
    return-object p0
.end method

.method public setConnectionSpecs(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;)",
            "Lcom/android/okhttp/OkHttpClient;"
        }
    .end annotation

    #@0
    .prologue
    .line 562
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
    invoke-static {p1}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    #@6
    .line 563
    return-object p0
.end method

.method public setCookieHandler(Ljava/net/CookieHandler;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "cookieHandler"    # Ljava/net/CookieHandler;

    #@0
    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    #@2
    .line 326
    return-object p0
.end method

.method public setDispatcher(Lcom/android/okhttp/Dispatcher;)Lcom/android/okhttp/OkHttpClient;
    .locals 2
    .param p1, "dispatcher"    # Lcom/android/okhttp/Dispatcher;

    #@0
    .prologue
    .line 503
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "dispatcher == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 504
    :cond_0
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    #@d
    .line 505
    return-object p0
.end method

.method public setFollowRedirects(Z)V
    .locals 0
    .param p1, "followRedirects"    # Z

    #@0
    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    #@2
    .line 460
    return-void
.end method

.method public setFollowSslRedirects(Z)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "followProtocolRedirects"    # Z

    #@0
    .prologue
    .line 451
    iput-boolean p1, p0, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    #@2
    .line 452
    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    #@0
    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@2
    .line 390
    return-object p0
.end method

.method setInternalCache(Lcom/android/okhttp/internal/InternalCache;)V
    .locals 1
    .param p1, "internalCache"    # Lcom/android/okhttp/internal/InternalCache;

    #@0
    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    #@2
    .line 336
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    #@5
    .line 334
    return-void
.end method

.method public setProtocols(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;)",
            "Lcom/android/okhttp/OkHttpClient;"
        }
    .end annotation

    #@0
    .prologue
    .line 543
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    invoke-static {p1}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    #@3
    move-result-object p1

    #@4
    .line 544
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    #@6
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 545
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "protocols doesn\'t contain http/1.1: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 547
    :cond_0
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    #@28
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_1

    #@2e
    .line 548
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@30
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, "protocols must not contain http/1.0: "

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw v0

    #@48
    .line 550
    :cond_1
    const/4 v0, 0x0

    #@49
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_2

    #@4f
    .line 551
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@51
    const-string/jumbo v1, "protocols must not contain null"

    #@54
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v0

    #@58
    .line 553
    :cond_2
    invoke-static {p1}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    #@5b
    move-result-object v0

    #@5c
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    #@5e
    .line 554
    return-object p0
.end method

.method public setProxy(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;

    #@0
    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    #@2
    .line 292
    return-object p0
.end method

.method public setProxySelector(Ljava/net/ProxySelector;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;

    #@0
    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    #@2
    .line 310
    return-object p0
.end method

.method public setReadTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 253
    cmp-long v2, p1, v4

    #@4
    if-gez v2, :cond_0

    #@6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v3, "timeout < 0"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 254
    :cond_0
    if-nez p3, :cond_1

    #@11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "unit == null"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 255
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@1d
    move-result-wide v0

    #@1e
    .line 256
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    #@21
    cmp-long v2, v0, v2

    #@23
    if-lez v2, :cond_2

    #@25
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v3, "Timeout too large."

    #@2a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 257
    :cond_2
    cmp-long v2, v0, v4

    #@30
    if-nez v2, :cond_3

    #@32
    cmp-long v2, p1, v4

    #@34
    if-lez v2, :cond_3

    #@36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@38
    const-string/jumbo v3, "Timeout too small."

    #@3b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v2

    #@3f
    .line 258
    :cond_3
    long-to-int v2, v0

    #@40
    iput v2, p0, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    #@42
    .line 252
    return-void
.end method

.method public setRetryOnConnectionFailure(Z)V
    .locals 0
    .param p1, "retryOnConnectionFailure"    # Z

    #@0
    .prologue
    .line 487
    iput-boolean p1, p0, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    #@2
    .line 486
    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    #@0
    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    #@2
    .line 361
    return-object p0
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/OkHttpClient;
    .locals 0
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    #@0
    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@2
    .line 375
    return-object p0
.end method

.method public setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 271
    cmp-long v2, p1, v4

    #@4
    if-gez v2, :cond_0

    #@6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v3, "timeout < 0"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 272
    :cond_0
    if-nez p3, :cond_1

    #@11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "unit == null"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 273
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@1d
    move-result-wide v0

    #@1e
    .line 274
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    #@21
    cmp-long v2, v0, v2

    #@23
    if-lez v2, :cond_2

    #@25
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v3, "Timeout too large."

    #@2a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 275
    :cond_2
    cmp-long v2, v0, v4

    #@30
    if-nez v2, :cond_3

    #@32
    cmp-long v2, p1, v4

    #@34
    if-lez v2, :cond_3

    #@36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@38
    const-string/jumbo v3, "Timeout too small."

    #@3b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v2

    #@3f
    .line 276
    :cond_3
    long-to-int v2, v0

    #@40
    iput v2, p0, Lcom/android/okhttp/OkHttpClient;->writeTimeout:I

    #@42
    .line 270
    return-void
.end method
