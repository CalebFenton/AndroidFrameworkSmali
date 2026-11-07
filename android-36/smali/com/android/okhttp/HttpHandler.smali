.class public Lcom/android/okhttp/HttpHandler;
.super Ljava/net/URLStreamHandler;
.source "HttpHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/HttpHandler$CleartextURLFilter;
    }
.end annotation


# static fields
.field private static final blacklist CLEARTEXT_FILTER:Lcom/android/okhttp/HttpHandler$CleartextURLFilter;

.field private static final blacklist CLEARTEXT_ONLY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 43
    sget-object v0, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/HttpHandler;->CLEARTEXT_ONLY:Ljava/util/List;

    .line 46
    new-instance v0, Lcom/android/okhttp/HttpHandler$CleartextURLFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/okhttp/HttpHandler$CleartextURLFilter;-><init>(Lcom/android/okhttp/HttpHandler$1;)V

    sput-object v0, Lcom/android/okhttp/HttpHandler;->CLEARTEXT_FILTER:Lcom/android/okhttp/HttpHandler$CleartextURLFilter;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    .line 49
    invoke-static {}, Lcom/android/okhttp/ConfigAwareConnectionPool;->getInstance()Lcom/android/okhttp/ConfigAwareConnectionPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpHandler;->configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;

    return-void
.end method

.method public static blacklist createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;
    .registers 5

    .line 85
    new-instance v0, Lcom/android/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/android/okhttp/OkHttpClient;-><init>()V

    .line 88
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 89
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 90
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 94
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/OkHttpClient;->setFollowRedirects(Z)V

    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, v1}, Lcom/android/okhttp/OkHttpClient;->setFollowSslRedirects(Z)Lcom/android/okhttp/OkHttpClient;

    .line 100
    sget-object v1, Lcom/android/okhttp/HttpHandler;->CLEARTEXT_ONLY:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/OkHttpClient;->setConnectionSpecs(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    if-eqz p0, :cond_27

    .line 105
    invoke-virtual {v0, p0}, Lcom/android/okhttp/OkHttpClient;->setProxy(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;

    .line 109
    :cond_27
    new-instance p0, Lcom/android/okhttp/OkUrlFactory;

    invoke-direct {p0, v0}, Lcom/android/okhttp/OkUrlFactory;-><init>(Lcom/android/okhttp/OkHttpClient;)V

    .line 113
    sget-object v0, Lcom/android/okhttp/HttpHandler;->CLEARTEXT_FILTER:Lcom/android/okhttp/HttpHandler$CleartextURLFilter;

    invoke-static {p0, v0}, Lcom/android/okhttp/OkUrlFactories;->setUrlFilter(Lcom/android/okhttp/OkUrlFactory;Lcom/android/okhttp/internal/URLFilter;)V

    .line 115
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 117
    invoke-static {p0, v0}, Lcom/android/okhttp/AndroidInternal;->setResponseCache(Lcom/android/okhttp/OkUrlFactory;Ljava/net/ResponseCache;)V

    :cond_3a
    return-object p0
.end method


# virtual methods
.method protected whitelist test-api getDefaultPort()I
    .registers 1

    .line 0
    const/16 p0, 0x50

    return p0
.end method

.method protected blacklist newOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;
    .registers 3

    .line 71
    invoke-static {p1}, Lcom/android/okhttp/HttpHandler;->createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    iget-object p0, p0, Lcom/android/okhttp/HttpHandler;->configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;

    invoke-virtual {p0}, Lcom/android/okhttp/ConfigAwareConnectionPool;->get()Lcom/android/okhttp/ConnectionPool;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/okhttp/OkHttpClient;->setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;

    return-object p1
.end method

.method protected whitelist test-api openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/okhttp/HttpHandler;->newOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method protected whitelist test-api openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 63
    invoke-virtual {p0, p2}, Lcom/android/okhttp/HttpHandler;->newOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0

    .line 61
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "url == null || proxy == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
