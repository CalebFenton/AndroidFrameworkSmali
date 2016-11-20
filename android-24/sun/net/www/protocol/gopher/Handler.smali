.class public Lsun/net/www/protocol/gopher/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    #@0
    .prologue
    .line 46
    const/16 v0, 0x46

    #@2
    return v0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/gopher/Handler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 3
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    if-nez p2, :cond_0

    #@2
    invoke-static {}, Lsun/net/www/protocol/gopher/GopherClient;->getUseGopherProxy()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 61
    invoke-static {}, Lsun/net/www/protocol/gopher/GopherClient;->getGopherProxyHost()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 62
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@e
    .line 63
    invoke-static {}, Lsun/net/www/protocol/gopher/GopherClient;->getGopherProxyPort()I

    #@11
    move-result v2

    #@12
    invoke-static {v0, v2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    #@15
    move-result-object v1

    #@16
    .line 65
    .local v1, "saddr":Ljava/net/InetSocketAddress;
    new-instance p2, Ljava/net/Proxy;

    #@18
    .end local p2    # "p":Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@1a
    invoke-direct {p2, v2, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    #@1d
    .line 68
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "saddr":Ljava/net/InetSocketAddress;
    .restart local p2    # "p":Ljava/net/Proxy;
    :cond_0
    if-eqz p2, :cond_1

    #@1f
    .line 69
    new-instance v2, Lsun/net/www/protocol/http/HttpURLConnection;

    #@21
    invoke-direct {v2, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    #@24
    return-object v2

    #@25
    .line 72
    :cond_1
    new-instance v2, Lsun/net/www/protocol/gopher/GopherURLConnection;

    #@27
    invoke-direct {v2, p1}, Lsun/net/www/protocol/gopher/GopherURLConnection;-><init>(Ljava/net/URL;)V

    #@2a
    return-object v2
.end method
