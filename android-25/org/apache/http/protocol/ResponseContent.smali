.class public Lorg/apache/http/protocol/ResponseContent;
.super Ljava/lang/Object;
.source "ResponseContent.java"

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
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
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
    .line 68
    if-nez p1, :cond_0

    #@2
    .line 69
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v6, "HTTP request may not be null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 71
    :cond_0
    const-string/jumbo v5, "Transfer-Encoding"

    #@e
    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_1

    #@14
    .line 72
    new-instance v5, Lorg/apache/http/ProtocolException;

    #@16
    const-string/jumbo v6, "Transfer-encoding header already present"

    #@19
    invoke-direct {v5, v6}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v5

    #@1d
    .line 74
    :cond_1
    const-string/jumbo v5, "Content-Length"

    #@20
    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_2

    #@26
    .line 75
    new-instance v5, Lorg/apache/http/ProtocolException;

    #@28
    const-string/jumbo v6, "Content-Length header already present"

    #@2b
    invoke-direct {v5, v6}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v5

    #@2f
    .line 77
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@32
    move-result-object v5

    #@33
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@36
    move-result-object v4

    #@37
    .line 78
    .local v4, "ver":Lorg/apache/http/ProtocolVersion;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    #@3a
    move-result-object v0

    #@3b
    .line 79
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_a

    #@3d
    .line 80
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@40
    move-result-wide v2

    #@41
    .line 81
    .local v2, "len":J
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_3

    #@47
    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    #@49
    invoke-virtual {v4, v5}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    #@4c
    move-result v5

    #@4d
    if-eqz v5, :cond_7

    #@4f
    .line 83
    :cond_3
    const-wide/16 v6, 0x0

    #@51
    cmp-long v5, v2, v6

    #@53
    if-ltz v5, :cond_4

    #@55
    .line 84
    const-string/jumbo v5, "Content-Length"

    #@58
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@5b
    move-result-wide v6

    #@5c
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@63
    .line 87
    :cond_4
    :goto_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    #@66
    move-result-object v5

    #@67
    if-eqz v5, :cond_5

    #@69
    .line 88
    const-string/jumbo v5, "Content-Type"

    #@6c
    .line 87
    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    #@6f
    move-result v5

    #@70
    if-eqz v5, :cond_8

    #@72
    .line 92
    :cond_5
    :goto_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    #@75
    move-result-object v5

    #@76
    if-eqz v5, :cond_6

    #@78
    .line 93
    const-string/jumbo v5, "Content-Encoding"

    #@7b
    .line 92
    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    #@7e
    move-result v5

    #@7f
    if-eqz v5, :cond_9

    #@81
    .line 67
    .end local v2    # "len":J
    :cond_6
    :goto_2
    return-void

    #@82
    .line 82
    .restart local v2    # "len":J
    :cond_7
    const-string/jumbo v5, "Transfer-Encoding"

    #@85
    const-string/jumbo v6, "chunked"

    #@88
    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@8b
    goto :goto_0

    #@8c
    .line 89
    :cond_8
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    #@8f
    move-result-object v5

    #@90
    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V

    #@93
    goto :goto_1

    #@94
    .line 94
    :cond_9
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    #@97
    move-result-object v5

    #@98
    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V

    #@9b
    goto :goto_2

    #@9c
    .line 97
    .end local v2    # "len":J
    :cond_a
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@9f
    move-result-object v5

    #@a0
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@a3
    move-result v1

    #@a4
    .line 98
    .local v1, "status":I
    const/16 v5, 0xcc

    #@a6
    if-eq v1, v5, :cond_6

    #@a8
    .line 99
    const/16 v5, 0x130

    #@aa
    if-eq v1, v5, :cond_6

    #@ac
    .line 100
    const/16 v5, 0xcd

    #@ae
    if-eq v1, v5, :cond_6

    #@b0
    .line 101
    const-string/jumbo v5, "Content-Length"

    #@b3
    const-string/jumbo v6, "0"

    #@b6
    invoke-interface {p1, v5, v6}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@b9
    goto :goto_2
.end method
