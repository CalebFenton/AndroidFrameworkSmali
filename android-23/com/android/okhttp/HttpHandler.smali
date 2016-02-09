.class public Lcom/android/okhttp/HttpHandler;
.super Ljava/net/URLStreamHandler;
.source "HttpHandler.java"


# static fields
.field private static final CLEARTEXT_ONLY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 33
    sget-object v0, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 32
    sput-object v0, Lcom/android/okhttp/HttpHandler;->CLEARTEXT_ONLY:Ljava/util/List;

    #@8
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    #@3
    .line 36
    invoke-static {}, Lcom/android/okhttp/ConfigAwareConnectionPool;->getInstance()Lcom/android/okhttp/ConfigAwareConnectionPool;

    #@6
    move-result-object v0

    #@7
    .line 35
    iput-object v0, p0, Lcom/android/okhttp/HttpHandler;->configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;

    #@9
    .line 30
    return-void
.end method

.method public static createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;
    .locals 4
    .param p0, "proxy"    # Ljava/net/Proxy;

    #@0
    .prologue
    .line 68
    new-instance v0, Lcom/android/okhttp/OkHttpClient;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/OkHttpClient;-><init>()V

    #@5
    .line 71
    .local v0, "client":Lcom/android/okhttp/OkHttpClient;
    const/4 v3, 0x0

    #@6
    invoke-virtual {v0, v3}, Lcom/android/okhttp/OkHttpClient;->setFollowSslRedirects(Z)Lcom/android/okhttp/OkHttpClient;

    #@9
    .line 73
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_2

    #@f
    .line 75
    sget-object v3, Lcom/android/okhttp/HttpHandler;->CLEARTEXT_ONLY:Ljava/util/List;

    #@11
    invoke-virtual {v0, v3}, Lcom/android/okhttp/OkHttpClient;->setConnectionSpecs(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    #@14
    .line 84
    :goto_0
    if-eqz p0, :cond_0

    #@16
    .line 85
    invoke-virtual {v0, p0}, Lcom/android/okhttp/OkHttpClient;->setProxy(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;

    #@19
    .line 89
    :cond_0
    new-instance v1, Lcom/android/okhttp/OkUrlFactory;

    #@1b
    invoke-direct {v1, v0}, Lcom/android/okhttp/OkUrlFactory;-><init>(Lcom/android/okhttp/OkHttpClient;)V

    #@1e
    .line 90
    .local v1, "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    #@21
    move-result-object v2

    #@22
    .line 91
    .local v2, "responseCache":Ljava/net/ResponseCache;
    if-eqz v2, :cond_1

    #@24
    .line 92
    invoke-static {v1, v2}, Lcom/android/okhttp/AndroidInternal;->setResponseCache(Lcom/android/okhttp/OkUrlFactory;Ljava/net/ResponseCache;)V

    #@27
    .line 94
    :cond_1
    return-object v1

    #@28
    .line 79
    .end local v1    # "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    .end local v2    # "responseCache":Ljava/net/ResponseCache;
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v0, v3}, Lcom/android/okhttp/OkHttpClient;->setConnectionSpecs(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    #@2f
    goto :goto_0
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    #@0
    .prologue
    .line 50
    const/16 v0, 0x50

    #@2
    return v0
.end method

.method protected newOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;
    .locals 3
    .param p1, "proxy"    # Ljava/net/Proxy;

    #@0
    .prologue
    .line 54
    invoke-static {p1}, Lcom/android/okhttp/HttpHandler;->createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    #@3
    move-result-object v0

    #@4
    .line 58
    .local v0, "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    invoke-virtual {v0}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Lcom/android/okhttp/HttpHandler;->configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;

    #@a
    invoke-virtual {v2}, Lcom/android/okhttp/ConfigAwareConnectionPool;->get()Lcom/android/okhttp/ConnectionPool;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Lcom/android/okhttp/OkHttpClient;->setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;

    #@11
    .line 59
    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 39
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/okhttp/HttpHandler;->newOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "url == null || proxy == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 46
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/okhttp/HttpHandler;->newOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method
