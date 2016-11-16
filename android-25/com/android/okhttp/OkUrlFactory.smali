.class public final Lcom/android/okhttp/OkUrlFactory;
.super Ljava/lang/Object;
.source "OkUrlFactory.java"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final client:Lcom/android/okhttp/OkHttpClient;

.field private urlFilter:Lcom/android/okhttp/internal/URLFilter;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/OkHttpClient;)V
    .locals 0
    .param p1, "client"    # Lcom/android/okhttp/OkHttpClient;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Lcom/android/okhttp/OkUrlFactory;->client:Lcom/android/okhttp/OkHttpClient;

    #@5
    .line 33
    return-void
.end method


# virtual methods
.method public client()Lcom/android/okhttp/OkHttpClient;
    .locals 1

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/okhttp/OkUrlFactory;->client:Lcom/android/okhttp/OkHttpClient;

    #@2
    return-object v0
.end method

.method public clone()Lcom/android/okhttp/OkUrlFactory;
    .locals 2

    #@0
    .prologue
    .line 50
    new-instance v0, Lcom/android/okhttp/OkUrlFactory;

    #@2
    iget-object v1, p0, Lcom/android/okhttp/OkUrlFactory;->client:Lcom/android/okhttp/OkHttpClient;

    #@4
    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->clone()Lcom/android/okhttp/OkHttpClient;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/android/okhttp/OkUrlFactory;-><init>(Lcom/android/okhttp/OkHttpClient;)V

    #@b
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
    .line 49
    invoke-virtual {p0}, Lcom/android/okhttp/OkUrlFactory;->clone()Lcom/android/okhttp/OkUrlFactory;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    const-string/jumbo v0, "http"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    const-string/jumbo v0, "https"

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 80
    :cond_0
    new-instance v0, Lcom/android/okhttp/OkUrlFactory$1;

    #@14
    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/OkUrlFactory$1;-><init>(Lcom/android/okhttp/OkUrlFactory;Ljava/lang/String;)V

    #@17
    return-object v0

    #@18
    .line 78
    :cond_1
    const/4 v0, 0x0

    #@19
    return-object v0
.end method

.method public open(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/okhttp/OkUrlFactory;->client:Lcom/android/okhttp/OkHttpClient;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method open(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;

    #@0
    .prologue
    .line 58
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 59
    .local v1, "protocol":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/okhttp/OkUrlFactory;->client:Lcom/android/okhttp/OkHttpClient;

    #@6
    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->copyWithDefaults()Lcom/android/okhttp/OkHttpClient;

    #@9
    move-result-object v0

    #@a
    .line 60
    .local v0, "copy":Lcom/android/okhttp/OkHttpClient;
    invoke-virtual {v0, p2}, Lcom/android/okhttp/OkHttpClient;->setProxy(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;

    #@d
    .line 62
    const-string/jumbo v2, "http"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    new-instance v2, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    #@18
    iget-object v3, p0, Lcom/android/okhttp/OkUrlFactory;->urlFilter:Lcom/android/okhttp/internal/URLFilter;

    #@1a
    invoke-direct {v2, p1, v0, v3}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/URLFilter;)V

    #@1d
    return-object v2

    #@1e
    .line 63
    :cond_0
    const-string/jumbo v2, "https"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    new-instance v2, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;

    #@29
    iget-object v3, p0, Lcom/android/okhttp/OkUrlFactory;->urlFilter:Lcom/android/okhttp/internal/URLFilter;

    #@2b
    invoke-direct {v2, p1, v0, v3}, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/URLFilter;)V

    #@2e
    return-object v2

    #@2f
    .line 64
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@31
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v4, "Unexpected protocol: "

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw v2
.end method

.method setUrlFilter(Lcom/android/okhttp/internal/URLFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/okhttp/internal/URLFilter;

    #@0
    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/okhttp/OkUrlFactory;->urlFilter:Lcom/android/okhttp/internal/URLFilter;

    #@2
    .line 41
    return-void
.end method
