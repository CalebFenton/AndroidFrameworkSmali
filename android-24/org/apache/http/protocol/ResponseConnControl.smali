.class public Lorg/apache/http/protocol/ResponseConnControl;
.super Ljava/lang/Object;
.source "ResponseConnControl.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


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
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 10
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
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
    const-string/jumbo v6, "HTTP response may not be null"

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
    .line 76
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@19
    move-result-object v5

    #@1a
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@1d
    move-result v3

    #@1e
    .line 77
    .local v3, "status":I
    const/16 v5, 0x190

    #@20
    if-eq v3, v5, :cond_2

    #@22
    .line 78
    const/16 v5, 0x198

    #@24
    if-ne v3, v5, :cond_3

    #@26
    .line 84
    :cond_2
    const-string/jumbo v5, "Connection"

    #@29
    const-string/jumbo v6, "Close"

    #@2c
    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@2f
    .line 85
    return-void

    #@30
    .line 79
    :cond_3
    const/16 v5, 0x19b

    #@32
    if-eq v3, v5, :cond_2

    #@34
    .line 80
    const/16 v5, 0x19d

    #@36
    if-eq v3, v5, :cond_2

    #@38
    .line 81
    const/16 v5, 0x19e

    #@3a
    if-eq v3, v5, :cond_2

    #@3c
    .line 82
    const/16 v5, 0x1f7

    #@3e
    if-eq v3, v5, :cond_2

    #@40
    .line 83
    const/16 v5, 0x1f5

    #@42
    if-eq v3, v5, :cond_2

    #@44
    .line 89
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@47
    move-result-object v0

    #@48
    .line 90
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_5

    #@4a
    .line 91
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@4d
    move-result-object v5

    #@4e
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@51
    move-result-object v4

    #@52
    .line 92
    .local v4, "ver":Lorg/apache/http/ProtocolVersion;
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@55
    move-result-wide v6

    #@56
    const-wide/16 v8, 0x0

    #@58
    cmp-long v5, v6, v8

    #@5a
    if-gez v5, :cond_5

    #@5c
    .line 93
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    #@5f
    move-result v5

    #@60
    if-eqz v5, :cond_4

    #@62
    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    #@64
    invoke-virtual {v4, v5}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    #@67
    move-result v5

    #@68
    .line 92
    if-eqz v5, :cond_5

    #@6a
    .line 94
    :cond_4
    const-string/jumbo v5, "Connection"

    #@6d
    const-string/jumbo v6, "Close"

    #@70
    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@73
    .line 95
    return-void

    #@74
    .line 100
    .end local v4    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_5
    const-string/jumbo v5, "http.request"

    #@77
    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@7a
    move-result-object v2

    #@7b
    .line 99
    check-cast v2, Lorg/apache/http/HttpRequest;

    #@7d
    .line 101
    .local v2, "request":Lorg/apache/http/HttpRequest;
    if-eqz v2, :cond_6

    #@7f
    .line 102
    const-string/jumbo v5, "Connection"

    #@82
    invoke-interface {v2, v5}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@85
    move-result-object v1

    #@86
    .line 103
    .local v1, "header":Lorg/apache/http/Header;
    if-eqz v1, :cond_6

    #@88
    .line 104
    const-string/jumbo v5, "Connection"

    #@8b
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@8e
    move-result-object v6

    #@8f
    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@92
    .line 68
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_6
    return-void
.end method
