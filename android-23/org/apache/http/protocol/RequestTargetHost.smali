.class public Lorg/apache/http/protocol/RequestTargetHost;
.super Ljava/lang/Object;
.source "RequestTargetHost.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 7
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    if-nez p1, :cond_0

    #@2
    .line 70
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v6, "HTTP request may not be null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 72
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 73
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v6, "HTTP context may not be null"

    #@12
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v5

    #@16
    .line 75
    :cond_1
    const-string/jumbo v5, "Host"

    #@19
    invoke-interface {p1, v5}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    #@1c
    move-result v5

    #@1d
    if-nez v5, :cond_5

    #@1f
    .line 77
    const-string/jumbo v5, "http.target_host"

    #@22
    .line 76
    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Lorg/apache/http/HttpHost;

    #@28
    .line 78
    .local v3, "targethost":Lorg/apache/http/HttpHost;
    if-nez v3, :cond_4

    #@2a
    .line 80
    const-string/jumbo v5, "http.connection"

    #@2d
    .line 79
    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Lorg/apache/http/HttpConnection;

    #@33
    .line 81
    .local v1, "conn":Lorg/apache/http/HttpConnection;
    instance-of v5, v1, Lorg/apache/http/HttpInetConnection;

    #@35
    if-eqz v5, :cond_2

    #@37
    move-object v5, v1

    #@38
    .line 84
    check-cast v5, Lorg/apache/http/HttpInetConnection;

    #@3a
    invoke-interface {v5}, Lorg/apache/http/HttpInetConnection;->getRemoteAddress()Ljava/net/InetAddress;

    #@3d
    move-result-object v0

    #@3e
    .line 85
    .local v0, "address":Ljava/net/InetAddress;
    check-cast v1, Lorg/apache/http/HttpInetConnection;

    #@40
    .end local v1    # "conn":Lorg/apache/http/HttpConnection;
    invoke-interface {v1}, Lorg/apache/http/HttpInetConnection;->getRemotePort()I

    #@43
    move-result v2

    #@44
    .line 86
    .local v2, "port":I
    if-eqz v0, :cond_2

    #@46
    .line 87
    new-instance v3, Lorg/apache/http/HttpHost;

    #@48
    .end local v3    # "targethost":Lorg/apache/http/HttpHost;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    invoke-direct {v3, v5, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    #@4f
    .line 90
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v2    # "port":I
    .restart local v3    # "targethost":Lorg/apache/http/HttpHost;
    :cond_2
    if-nez v3, :cond_4

    #@51
    .line 91
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    #@54
    move-result-object v5

    #@55
    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@58
    move-result-object v4

    #@59
    .line 92
    .local v4, "ver":Lorg/apache/http/ProtocolVersion;
    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    #@5b
    invoke-virtual {v4, v5}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    #@5e
    move-result v5

    #@5f
    if-eqz v5, :cond_3

    #@61
    .line 93
    return-void

    #@62
    .line 95
    :cond_3
    new-instance v5, Lorg/apache/http/ProtocolException;

    #@64
    const-string/jumbo v6, "Target host missing"

    #@67
    invoke-direct {v5, v6}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v5

    #@6b
    .line 99
    .end local v4    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_4
    const-string/jumbo v5, "Host"

    #@6e
    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@75
    .line 68
    .end local v3    # "targethost":Lorg/apache/http/HttpHost;
    :cond_5
    return-void
.end method
