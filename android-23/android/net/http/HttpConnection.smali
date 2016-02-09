.class Landroid/net/http/HttpConnection;
.super Landroid/net/http/Connection;
.source "HttpConnection.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "requestFeeder"    # Landroid/net/http/RequestFeeder;

    #@0
    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/net/http/Connection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    #@3
    .line 34
    return-void
.end method


# virtual methods
.method closeConnection()V
    .locals 2

    #@0
    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Landroid/net/http/HttpConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/net/http/HttpConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    #@6
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 71
    iget-object v1, p0, Landroid/net/http/HttpConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    #@e
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 68
    :cond_0
    :goto_0
    return-void

    #@12
    .line 73
    :catch_0
    move-exception v0

    #@13
    .line 77
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@16
    goto :goto_0
.end method

.method getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    const-string/jumbo v0, "http"

    #@3
    return-object v0
.end method

.method openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .locals 6
    .param p1, "req"    # Landroid/net/http/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/net/http/Request;->getEventHandler()Landroid/net/http/EventHandler;

    #@3
    move-result-object v1

    #@4
    .line 49
    .local v1, "eventHandler":Landroid/net/http/EventHandler;
    const/4 v4, 0x0

    #@5
    iput-object v4, p0, Landroid/net/http/HttpConnection;->mCertificate:Landroid/net/http/SslCertificate;

    #@7
    .line 50
    iget-object v4, p0, Landroid/net/http/HttpConnection;->mCertificate:Landroid/net/http/SslCertificate;

    #@9
    invoke-interface {v1, v4}, Landroid/net/http/EventHandler;->certificate(Landroid/net/http/SslCertificate;)V

    #@c
    .line 52
    new-instance v0, Landroid/net/http/AndroidHttpClientConnection;

    #@e
    invoke-direct {v0}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V

    #@11
    .line 53
    .local v0, "conn":Landroid/net/http/AndroidHttpClientConnection;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    #@13
    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    #@16
    .line 54
    .local v2, "params":Lorg/apache/http/params/BasicHttpParams;
    new-instance v3, Ljava/net/Socket;

    #@18
    iget-object v4, p0, Landroid/net/http/HttpConnection;->mHost:Lorg/apache/http/HttpHost;

    #@1a
    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    iget-object v5, p0, Landroid/net/http/HttpConnection;->mHost:Lorg/apache/http/HttpHost;

    #@20
    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getPort()I

    #@23
    move-result v5

    #@24
    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    #@27
    .line 55
    .local v3, "sock":Ljava/net/Socket;
    const-string/jumbo v4, "http.socket.buffer-size"

    #@2a
    const/16 v5, 0x2000

    #@2c
    invoke-virtual {v2, v4, v5}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    #@2f
    .line 56
    invoke-virtual {v0, v3, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    #@32
    .line 57
    return-object v0
.end method

.method restartConnection(Z)V
    .locals 0
    .param p1, "abort"    # Z

    #@0
    .prologue
    .line 84
    return-void
.end method
