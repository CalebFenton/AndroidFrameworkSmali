.class public Lorg/apache/http/protocol/RequestContent;
.super Ljava/lang/Object;
.source "RequestContent.java"

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
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6
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
    .line 67
    if-nez p1, :cond_0

    #@2
    .line 68
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "HTTP request may not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 70
    :cond_0
    instance-of v2, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@d
    if-eqz v2, :cond_7

    #@f
    .line 71
    const-string/jumbo v2, "Transfer-Encoding"

    #@12
    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 72
    new-instance v2, Lorg/apache/http/ProtocolException;

    #@1a
    const-string/jumbo v3, "Transfer-encoding header already present"

    #@1d
    invoke-direct {v2, v3}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 74
    :cond_1
    const-string/jumbo v2, "Content-Length"

    #@24
    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_2

    #@2a
    .line 75
    new-instance v2, Lorg/apache/http/ProtocolException;

    #@2c
    const-string/jumbo v3, "Content-Length header already present"

    #@2f
    invoke-direct {v2, v3}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    #@32
    throw v2

    #@33
    .line 77
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    #@36
    move-result-object v2

    #@37
    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@3a
    move-result-object v1

    #@3b
    .local v1, "ver":Lorg/apache/http/ProtocolVersion;
    move-object v2, p1

    #@3c
    .line 78
    check-cast v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@3e
    invoke-interface {v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    #@41
    move-result-object v0

    #@42
    .line 79
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-nez v0, :cond_3

    #@44
    .line 80
    const-string/jumbo v2, "Content-Length"

    #@47
    const-string/jumbo v3, "0"

    #@4a
    invoke-interface {p1, v2, v3}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    .line 81
    return-void

    #@4e
    .line 84
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    #@51
    move-result v2

    #@52
    if-nez v2, :cond_4

    #@54
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@57
    move-result-wide v2

    #@58
    const-wide/16 v4, 0x0

    #@5a
    cmp-long v2, v2, v4

    #@5c
    if-gez v2, :cond_8

    #@5e
    .line 85
    :cond_4
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    #@60
    invoke-virtual {v1, v2}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    #@63
    move-result v2

    #@64
    if-eqz v2, :cond_5

    #@66
    .line 86
    new-instance v2, Lorg/apache/http/ProtocolException;

    #@68
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v4, "Chunked transfer encoding not allowed for "

    #@70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v3

    #@7c
    .line 86
    invoke-direct {v2, v3}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v2

    #@80
    .line 89
    :cond_5
    const-string/jumbo v2, "Transfer-Encoding"

    #@83
    const-string/jumbo v3, "chunked"

    #@86
    invoke-interface {p1, v2, v3}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@89
    .line 94
    :goto_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    #@8c
    move-result-object v2

    #@8d
    if-eqz v2, :cond_6

    #@8f
    .line 95
    const-string/jumbo v2, "Content-Type"

    #@92
    .line 94
    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    #@95
    move-result v2

    #@96
    if-eqz v2, :cond_9

    #@98
    .line 99
    :cond_6
    :goto_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    #@9b
    move-result-object v2

    #@9c
    if-eqz v2, :cond_7

    #@9e
    .line 100
    const-string/jumbo v2, "Content-Encoding"

    #@a1
    .line 99
    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    #@a4
    move-result v2

    #@a5
    if-eqz v2, :cond_a

    #@a7
    .line 66
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v1    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_7
    :goto_2
    return-void

    #@a8
    .line 91
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v1    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_8
    const-string/jumbo v2, "Content-Length"

    #@ab
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@ae
    move-result-wide v4

    #@af
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@b2
    move-result-object v3

    #@b3
    invoke-interface {p1, v2, v3}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@b6
    goto :goto_0

    #@b7
    .line 96
    :cond_9
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    #@ba
    move-result-object v2

    #@bb
    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    #@be
    goto :goto_1

    #@bf
    .line 101
    :cond_a
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    #@c2
    move-result-object v2

    #@c3
    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    #@c6
    goto :goto_2
.end method
