.class public Llibcore/net/http/HttpURLConnectionFactory;
.super Ljava/lang/Object;
.source "HttpURLConnectionFactory.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final blacklist mFactory:Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;

    invoke-direct {v0}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;-><init>()V

    iput-object v0, p0, Llibcore/net/http/HttpURLConnectionFactory;->mFactory:Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;

    .line 55
    return-void
.end method

.method public static blacklist test-api createInstance()Llibcore/net/http/HttpURLConnectionFactory;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 50
    new-instance v0, Llibcore/net/http/HttpURLConnectionFactory;

    invoke-direct {v0}, Llibcore/net/http/HttpURLConnectionFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist test-api openConnection(Ljava/net/URL;Ljavax/net/SocketFactory;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionFactory;->mFactory:Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->openConnection(Ljava/net/URL;Ljavax/net/SocketFactory;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist test-api setDns(Llibcore/net/http/Dns;)V
    .registers 3
    .param p1, "dns"    # Llibcore/net/http/Dns;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 82
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionFactory;->mFactory:Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->setDns(Lcom/android/okhttp/internalandroidapi/Dns;)V

    .line 83
    return-void
.end method

.method public blacklist test-api setNewConnectionPool(IJLjava/util/concurrent/TimeUnit;)V
    .registers 6
    .param p1, "maxIdleConnections"    # I
    .param p2, "keepAliveDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 70
    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionFactory;->mFactory:Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->setNewConnectionPool(IJLjava/util/concurrent/TimeUnit;)V

    .line 71
    return-void
.end method
