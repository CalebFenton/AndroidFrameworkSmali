.class public final Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;
.super Ljava/lang/Object;
.source "HttpURLConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;
    }
.end annotation


# instance fields
.field private blacklist connectionPool:Lcom/android/okhttp/ConnectionPool;

.field private blacklist dns:Lcom/android/okhttp/Dns;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist internalOpenConnection(Ljava/net/URL;Ljavax/net/SocketFactory;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 133
    invoke-static {p3}, Lcom/android/okhttp/HttpHandler;->createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object v0

    goto :goto_1d

    .line 134
    :cond_11
    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 135
    invoke-static {p3}, Lcom/android/okhttp/HttpsHandler;->createHttpsOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object v0

    .line 141
    :goto_1d
    invoke-virtual {v0}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    if-eqz v2, :cond_28

    .line 143
    invoke-virtual {v1, v2}, Lcom/android/okhttp/OkHttpClient;->setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;

    .line 145
    :cond_28
    iget-object p0, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->dns:Lcom/android/okhttp/Dns;

    if-eqz p0, :cond_2f

    .line 146
    invoke-virtual {v1, p0}, Lcom/android/okhttp/OkHttpClient;->setDns(Lcom/android/okhttp/Dns;)Lcom/android/okhttp/OkHttpClient;

    :cond_2f
    if-eqz p2, :cond_34

    .line 149
    invoke-virtual {v1, p2}, Lcom/android/okhttp/OkHttpClient;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/android/okhttp/OkHttpClient;

    :cond_34
    if-nez p3, :cond_3b

    .line 152
    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0

    .line 154
    :cond_3b
    invoke-static {v0, p1, p3}, Lcom/android/okhttp/OkUrlFactories;->open(Lcom/android/okhttp/OkUrlFactory;Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0

    .line 138
    :cond_40
    new-instance p0, Ljava/net/MalformedURLException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid URL or unrecognized protocol "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0, v0}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->internalOpenConnection(Ljava/net/URL;Ljavax/net/SocketFactory;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method public blacklist openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0, p2}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->internalOpenConnection(Ljava/net/URL;Ljavax/net/SocketFactory;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method public blacklist openConnection(Ljava/net/URL;Ljavax/net/SocketFactory;)Ljava/net/URLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, p2, v0}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->internalOpenConnection(Ljava/net/URL;Ljavax/net/SocketFactory;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method public blacklist openConnection(Ljava/net/URL;Ljavax/net/SocketFactory;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->internalOpenConnection(Ljava/net/URL;Ljavax/net/SocketFactory;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setDns(Lcom/android/okhttp/internalandroidapi/Dns;)V
    .registers 3

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    new-instance v0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;

    invoke-direct {v0, p1}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;-><init>(Lcom/android/okhttp/internalandroidapi/Dns;)V

    iput-object v0, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->dns:Lcom/android/okhttp/Dns;

    return-void
.end method

.method public blacklist setNewConnectionPool(IJLjava/util/concurrent/TimeUnit;)V
    .registers 6

    .line 73
    new-instance v0, Lcom/android/okhttp/ConnectionPool;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/okhttp/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    return-void
.end method
