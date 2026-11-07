.class public Lcom/android/okhttp/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final greylist-max-o DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private greylist-max-o authenticator:Lcom/android/okhttp/Authenticator;

.field private greylist-max-o cache:Lcom/android/okhttp/Cache;

.field private greylist-max-o certificatePinner:Lcom/android/okhttp/CertificatePinner;

.field private greylist-max-o connectTimeout:I

.field private greylist connectionPool:Lcom/android/okhttp/ConnectionPool;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private greylist-max-o connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o cookieHandler:Ljava/net/CookieHandler;

.field private greylist-max-o dispatcher:Lcom/android/okhttp/Dispatcher;

.field private greylist dns:Lcom/android/okhttp/Dns;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private greylist-max-o followRedirects:Z

.field private greylist-max-o followSslRedirects:Z

.field private greylist-max-o hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final greylist-max-o interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o internalCache:Lcom/android/okhttp/internal/InternalCache;

.field private final greylist-max-o networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o proxy:Ljava/net/Proxy;

.field private greylist-max-o proxySelector:Ljava/net/ProxySelector;

.field private greylist-max-o readTimeout:I

.field private greylist-max-o retryOnConnectionFailure:Z

.field private final greylist-max-o routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

.field private greylist-max-o socketFactory:Ljavax/net/SocketFactory;

.field private greylist-max-o sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private greylist-max-o writeTimeout:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 57
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    sget-object v2, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    filled-new-array {v0, v1, v2}, [Lcom/android/okhttp/Protocol;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    .line 60
    sget-object v0, Lcom/android/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/android/okhttp/ConnectionSpec;

    sget-object v1, Lcom/android/okhttp/ConnectionSpec;->COMPATIBLE_TLS:Lcom/android/okhttp/ConnectionSpec;

    sget-object v2, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    filled-new-array {v0, v1, v2}, [Lcom/android/okhttp/ConnectionSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 64
    new-instance v0, Lcom/android/okhttp/OkHttpClient$1;

    invoke-direct {v0}, Lcom/android/okhttp/OkHttpClient$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    .line 147
    iput-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    .line 148
    iput-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    const/16 v0, 0x2710

    .line 149
    iput v0, p0, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    .line 150
    iput v0, p0, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    .line 151
    iput v0, p0, Lcom/android/okhttp/OkHttpClient;->writeTimeout:I

    .line 155
    new-instance v0, Lcom/android/okhttp/internal/RouteDatabase;

    invoke-direct {v0}, Lcom/android/okhttp/internal/RouteDatabase;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    .line 156
    new-instance v0, Lcom/android/okhttp/Dispatcher;

    invoke-direct {v0}, Lcom/android/okhttp/Dispatcher;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    return-void
.end method

.method private constructor greylist-max-o <init>(Lcom/android/okhttp/OkHttpClient;)V
    .registers 5

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    const/4 v2, 0x1

    .line 146
    iput-boolean v2, p0, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    .line 147
    iput-boolean v2, p0, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    .line 148
    iput-boolean v2, p0, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    const/16 v2, 0x2710

    .line 149
    iput v2, p0, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    .line 150
    iput v2, p0, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    .line 151
    iput v2, p0, Lcom/android/okhttp/OkHttpClient;->writeTimeout:I

    .line 160
    iget-object v2, p1, Lcom/android/okhttp/OkHttpClient;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    iput-object v2, p0, Lcom/android/okhttp/OkHttpClient;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    .line 161
    iget-object v2, p1, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    iput-object v2, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    .line 162
    iget-object v2, p1, Lcom/android/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v2, p0, Lcom/android/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 163
    iget-object v2, p1, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v2, p0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    .line 164
    iget-object v2, p1, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v2, p0, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 165
    iget-object v2, p1, Lcom/android/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 168
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 169
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    if-eqz v0, :cond_4f

    .line 170
    iget-object v0, v0, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    goto :goto_51

    :cond_4f
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    :goto_51
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    .line 171
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 172
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 173
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 174
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    .line 175
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    .line 176
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 177
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->dns:Lcom/android/okhttp/Dns;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->dns:Lcom/android/okhttp/Dns;

    .line 178
    iget-boolean v0, p1, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    iput-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    .line 179
    iget-boolean v0, p1, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    iput-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    .line 180
    iget-boolean v0, p1, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    .line 181
    iget v0, p1, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    iput v0, p0, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    .line 182
    iget v0, p1, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    iput v0, p0, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    .line 183
    iget p1, p1, Lcom/android/okhttp/OkHttpClient;->writeTimeout:I

    iput p1, p0, Lcom/android/okhttp/OkHttpClient;->writeTimeout:I

    return-void
.end method

.method private declared-synchronized greylist-max-o getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 3

    monitor-enter p0

    .line 643
    :try_start_1
    sget-object v0, Lcom/android/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v0, :cond_1e

    .line 645
    :try_start_5
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 646
    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 647
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_15
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_15} :catch_18
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    goto :goto_1e

    :catchall_16
    move-exception v0

    goto :goto_22

    .line 649
    :catch_18
    :try_start_18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 652
    :cond_1e
    :goto_1e
    sget-object v0, Lcom/android/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_16

    monitor-exit p0

    return-object v0

    :goto_22
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_16

    throw v0
.end method


# virtual methods
.method public greylist-max-o cancel(Ljava/lang/Object;)Lcom/android/okhttp/OkHttpClient;
    .registers 3

    .line 585
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Dispatcher;->cancel(Ljava/lang/Object;)V

    return-object p0
.end method

.method public blacklist clone()Lcom/android/okhttp/OkHttpClient;
    .registers 2

    .line 657
    new-instance v0, Lcom/android/okhttp/OkHttpClient;

    invoke-direct {v0, p0}, Lcom/android/okhttp/OkHttpClient;-><init>(Lcom/android/okhttp/OkHttpClient;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->clone()Lcom/android/okhttp/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method greylist-max-o copyWithDefaults()Lcom/android/okhttp/OkHttpClient;
    .registers 3

    .line 594
    new-instance v0, Lcom/android/okhttp/OkHttpClient;

    invoke-direct {v0, p0}, Lcom/android/okhttp/OkHttpClient;-><init>(Lcom/android/okhttp/OkHttpClient;)V

    .line 595
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    if-nez v1, :cond_f

    .line 596
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 598
    :cond_f
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    if-nez v1, :cond_19

    .line 599
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 601
    :cond_19
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    if-nez v1, :cond_23

    .line 602
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 604
    :cond_23
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_2d

    .line 605
    invoke-direct {p0}, Lcom/android/okhttp/OkHttpClient;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    iput-object p0, v0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 607
    :cond_2d
    iget-object p0, v0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez p0, :cond_35

    .line 608
    sget-object p0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/android/okhttp/internal/tls/OkHostnameVerifier;

    iput-object p0, v0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 610
    :cond_35
    iget-object p0, v0, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    if-nez p0, :cond_3d

    .line 611
    sget-object p0, Lcom/android/okhttp/CertificatePinner;->DEFAULT:Lcom/android/okhttp/CertificatePinner;

    iput-object p0, v0, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    .line 613
    :cond_3d
    iget-object p0, v0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    if-nez p0, :cond_45

    .line 614
    sget-object p0, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;->INSTANCE:Lcom/android/okhttp/Authenticator;

    iput-object p0, v0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    .line 616
    :cond_45
    iget-object p0, v0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    if-nez p0, :cond_4f

    .line 617
    invoke-static {}, Lcom/android/okhttp/ConnectionPool;->getDefault()Lcom/android/okhttp/ConnectionPool;

    move-result-object p0

    iput-object p0, v0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 619
    :cond_4f
    iget-object p0, v0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    if-nez p0, :cond_57

    .line 620
    sget-object p0, Lcom/android/okhttp/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object p0, v0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    .line 622
    :cond_57
    iget-object p0, v0, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    if-nez p0, :cond_5f

    .line 623
    sget-object p0, Lcom/android/okhttp/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object p0, v0, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 625
    :cond_5f
    iget-object p0, v0, Lcom/android/okhttp/OkHttpClient;->dns:Lcom/android/okhttp/Dns;

    if-nez p0, :cond_67

    .line 626
    sget-object p0, Lcom/android/okhttp/Dns;->SYSTEM:Lcom/android/okhttp/Dns;

    iput-object p0, v0, Lcom/android/okhttp/OkHttpClient;->dns:Lcom/android/okhttp/Dns;

    :cond_67
    return-object v0
.end method

.method public greylist-max-o getAuthenticator()Lcom/android/okhttp/Authenticator;
    .registers 1

    .line 407
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    return-object p0
.end method

.method public greylist-max-o getCache()Lcom/android/okhttp/Cache;
    .registers 1

    .line 313
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    return-object p0
.end method

.method public greylist-max-o getCertificatePinner()Lcom/android/okhttp/CertificatePinner;
    .registers 1

    .line 391
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    return-object p0
.end method

.method public greylist-max-o getConnectTimeout()I
    .registers 1

    .line 203
    iget p0, p0, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    return p0
.end method

.method public greylist getConnectionPool()Lcom/android/okhttp/ConnectionPool;
    .registers 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 423
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    return-object p0
.end method

.method public greylist-max-o getConnectionSpecs()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .line 552
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object p0
.end method

.method public greylist getCookieHandler()Ljava/net/CookieHandler;
    .registers 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 293
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    return-object p0
.end method

.method public greylist-max-o getDispatcher()Lcom/android/okhttp/Dispatcher;
    .registers 1

    .line 493
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    return-object p0
.end method

.method public greylist-max-o getDns()Lcom/android/okhttp/Dns;
    .registers 1

    .line 327
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->dns:Lcom/android/okhttp/Dns;

    return-object p0
.end method

.method public greylist-max-o getFollowRedirects()Z
    .registers 1

    .line 448
    iget-boolean p0, p0, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    return p0
.end method

.method public greylist-max-o getFollowSslRedirects()Z
    .registers 1

    .line 439
    iget-boolean p0, p0, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    return p0
.end method

.method public greylist getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 376
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public greylist-max-o getProtocols()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .line 543
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    return-object p0
.end method

.method public greylist getProxy()Ljava/net/Proxy;
    .registers 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 257
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public greylist getProxySelector()Ljava/net/ProxySelector;
    .registers 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 276
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public greylist-max-o getReadTimeout()I
    .registers 1

    .line 223
    iget p0, p0, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    return p0
.end method

.method public greylist-max-o getRetryOnConnectionFailure()Z
    .registers 1

    .line 475
    iget-boolean p0, p0, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    return p0
.end method

.method public greylist-max-o getSocketFactory()Ljavax/net/SocketFactory;
    .registers 1

    .line 345
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public greylist getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 360
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public greylist-max-o getWriteTimeout()I
    .registers 1

    .line 241
    iget p0, p0, Lcom/android/okhttp/OkHttpClient;->writeTimeout:I

    return p0
.end method

.method public greylist-max-o interceptors()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Interceptor;",
            ">;"
        }
    .end annotation

    .line 561
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    return-object p0
.end method

.method greylist-max-o internalCache()Lcom/android/okhttp/internal/InternalCache;
    .registers 1

    .line 303
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    return-object p0
.end method

.method public greylist-max-o networkInterceptors()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Interceptor;",
            ">;"
        }
    .end annotation

    .line 570
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object p0
.end method

.method public greylist-max-o newCall(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Call;
    .registers 3

    .line 577
    new-instance v0, Lcom/android/okhttp/Call;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/Call;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;)V

    return-object v0
.end method

.method greylist-max-o routeDatabase()Lcom/android/okhttp/internal/RouteDatabase;
    .registers 1

    .line 479
    iget-object p0, p0, Lcom/android/okhttp/OkHttpClient;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    return-object p0
.end method

.method public greylist-max-o setAuthenticator(Lcom/android/okhttp/Authenticator;)Lcom/android/okhttp/OkHttpClient;
    .registers 2

    .line 402
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    return-object p0
.end method

.method public greylist-max-o setCache(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/OkHttpClient;
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    const/4 p1, 0x0

    .line 308
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    return-object p0
.end method

.method public greylist-max-o setCertificatePinner(Lcom/android/okhttp/CertificatePinner;)Lcom/android/okhttp/OkHttpClient;
    .registers 2

    .line 386
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    return-object p0
.end method

.method public greylist-max-o setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_36

    if-eqz p3, :cond_2e

    .line 195
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_26

    cmp-long p3, p1, v0

    if-nez p3, :cond_22

    if-gtz v2, :cond_1a

    goto :goto_22

    .line 197
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too small."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_22
    long-to-int p1, p1

    .line 198
    iput p1, p0, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    return-void

    .line 196
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too large."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 194
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 193
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;
    .registers 2

    .line 417
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    return-object p0
.end method

.method public greylist-max-o setConnectionSpecs(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;)",
            "Lcom/android/okhttp/OkHttpClient;"
        }
    .end annotation

    .line 547
    invoke-static {p1}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object p0
.end method

.method public greylist-max-o setCookieHandler(Ljava/net/CookieHandler;)Lcom/android/okhttp/OkHttpClient;
    .registers 2

    .line 287
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    return-object p0
.end method

.method public greylist-max-o setDispatcher(Lcom/android/okhttp/Dispatcher;)Lcom/android/okhttp/OkHttpClient;
    .registers 2

    if-eqz p1, :cond_5

    .line 488
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    return-object p0

    .line 487
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dispatcher == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o setDns(Lcom/android/okhttp/Dns;)Lcom/android/okhttp/OkHttpClient;
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->dns:Lcom/android/okhttp/Dns;

    return-object p0
.end method

.method public greylist-max-o setFollowRedirects(Z)V
    .registers 2

    .line 444
    iput-boolean p1, p0, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    return-void
.end method

.method public greylist-max-o setFollowSslRedirects(Z)Lcom/android/okhttp/OkHttpClient;
    .registers 2

    .line 434
    iput-boolean p1, p0, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    return-object p0
.end method

.method public greylist-max-o setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/android/okhttp/OkHttpClient;
    .registers 2

    .line 370
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method greylist-max-o setInternalCache(Lcom/android/okhttp/internal/InternalCache;)V
    .registers 2

    .line 298
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    return-void
.end method

.method public greylist setProtocols(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;
    .registers 4
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Protocol;",
            ">;)",
            "Lcom/android/okhttp/OkHttpClient;"
        }
    .end annotation

    .line 528
    invoke-static {p1}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 529
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 532
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    .line 535
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 538
    invoke-static {p1}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    return-object p0

    .line 536
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "protocols must not contain null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 533
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocols must not contain http/1.0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 530
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o setProxy(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;
    .registers 2

    .line 251
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public greylist-max-o setProxySelector(Ljava/net/ProxySelector;)Lcom/android/okhttp/OkHttpClient;
    .registers 2

    .line 270
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public greylist-max-o setReadTimeout(JLjava/util/concurrent/TimeUnit;)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_36

    if-eqz p3, :cond_2e

    .line 215
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_26

    cmp-long p3, p1, v0

    if-nez p3, :cond_22

    if-gtz v2, :cond_1a

    goto :goto_22

    .line 217
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too small."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_22
    long-to-int p1, p1

    .line 218
    iput p1, p0, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    return-void

    .line 216
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too large."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 214
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 213
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setRetryOnConnectionFailure(Z)V
    .registers 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 471
    iput-boolean p1, p0, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    return-void
.end method

.method public greylist-max-o setSocketFactory(Ljavax/net/SocketFactory;)Lcom/android/okhttp/OkHttpClient;
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public greylist-max-o setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/OkHttpClient;
    .registers 2

    .line 354
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public greylist-max-o setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_36

    if-eqz p3, :cond_2e

    .line 233
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_26

    cmp-long p3, p1, v0

    if-nez p3, :cond_22

    if-gtz v2, :cond_1a

    goto :goto_22

    .line 235
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too small."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_22
    long-to-int p1, p1

    .line 236
    iput p1, p0, Lcom/android/okhttp/OkHttpClient;->writeTimeout:I

    return-void

    .line 234
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too large."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 232
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 231
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
