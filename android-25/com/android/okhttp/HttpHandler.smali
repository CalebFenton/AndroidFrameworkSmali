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
.field private static final CLEARTEXT_FILTER:Lcom/android/okhttp/HttpHandler$CleartextURLFilter;

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
    .locals 2

    #@0
    .prologue
    .line 36
    sget-object v0, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 35
    sput-object v0, Lcom/android/okhttp/HttpHandler;->CLEARTEXT_ONLY:Ljava/util/List;

    #@8
    .line 38
    new-instance v0, Lcom/android/okhttp/HttpHandler$CleartextURLFilter;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {v0, v1}, Lcom/android/okhttp/HttpHandler$CleartextURLFilter;-><init>(Lcom/android/okhttp/HttpHandler$CleartextURLFilter;)V

    #@e
    sput-object v0, Lcom/android/okhttp/HttpHandler;->CLEARTEXT_FILTER:Lcom/android/okhttp/HttpHandler$CleartextURLFilter;

    #@10
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    #@3
    .line 41
    invoke-static {}, Lcom/android/okhttp/ConfigAwareConnectionPool;->getInstance()Lcom/android/okhttp/ConfigAwareConnectionPool;

    #@6
    move-result-object v0

    #@7
    .line 40
    iput-object v0, p0, Lcom/android/okhttp/HttpHandler;->configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;

    #@9
    .line 33
    return-void
.end method

.method public static createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;
    .locals 6
    .param p0, "proxy"    # Ljava/net/Proxy;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 73
    new-instance v0, Lcom/android/okhttp/OkHttpClient;

    #@4
    invoke-direct {v0}, Lcom/android/okhttp/OkHttpClient;-><init>()V

    #@7
    .line 76
    .local v0, "client":Lcom/android/okhttp/OkHttpClient;
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@9
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    #@c
    .line 77
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@e
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    #@11
    .line 78
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@13
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    #@16
    .line 82
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    #@19
    move-result v3

    #@1a
    invoke-virtual {v0, v3}, Lcom/android/okhttp/OkHttpClient;->setFollowRedirects(Z)V

    #@1d
    .line 85
    const/4 v3, 0x0

    #@1e
    invoke-virtual {v0, v3}, Lcom/android/okhttp/OkHttpClient;->setFollowSslRedirects(Z)Lcom/android/okhttp/OkHttpClient;

    #@21
    .line 88
    sget-object v3, Lcom/android/okhttp/HttpHandler;->CLEARTEXT_ONLY:Ljava/util/List;

    #@23
    invoke-virtual {v0, v3}, Lcom/android/okhttp/OkHttpClient;->setConnectionSpecs(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    #@26
    .line 92
    if-eqz p0, :cond_0

    #@28
    .line 93
    invoke-virtual {v0, p0}, Lcom/android/okhttp/OkHttpClient;->setProxy(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;

    #@2b
    .line 97
    :cond_0
    new-instance v1, Lcom/android/okhttp/OkUrlFactory;

    #@2d
    invoke-direct {v1, v0}, Lcom/android/okhttp/OkUrlFactory;-><init>(Lcom/android/okhttp/OkHttpClient;)V

    #@30
    .line 101
    .local v1, "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    sget-object v3, Lcom/android/okhttp/HttpHandler;->CLEARTEXT_FILTER:Lcom/android/okhttp/HttpHandler$CleartextURLFilter;

    #@32
    invoke-virtual {v1, v3}, Lcom/android/okhttp/OkUrlFactory;->setUrlFilter(Lcom/android/okhttp/internal/URLFilter;)V

    #@35
    .line 103
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    #@38
    move-result-object v2

    #@39
    .line 104
    .local v2, "responseCache":Ljava/net/ResponseCache;
    if-eqz v2, :cond_1

    #@3b
    .line 105
    invoke-static {v1, v2}, Lcom/android/okhttp/AndroidInternal;->setResponseCache(Lcom/android/okhttp/OkUrlFactory;Ljava/net/ResponseCache;)V

    #@3e
    .line 107
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    #@0
    .prologue
    .line 55
    const/16 v0, 0x50

    #@2
    return v0
.end method

.method protected newOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;
    .locals 3
    .param p1, "proxy"    # Ljava/net/Proxy;

    #@0
    .prologue
    .line 59
    invoke-static {p1}, Lcom/android/okhttp/HttpHandler;->createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    #@3
    move-result-object v0

    #@4
    .line 63
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
    .line 64
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
    .line 44
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
    .line 48
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "url == null || proxy == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 51
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
