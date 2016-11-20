.class public Lorg/apache/http/protocol/RequestExpectContinue;
.super Ljava/lang/Object;
.source "RequestExpectContinue.java"

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
    if-eqz v2, :cond_1

    #@f
    move-object v2, p1

    #@10
    .line 71
    check-cast v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@12
    invoke-interface {v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    #@15
    move-result-object v0

    #@16
    .line 73
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_1

    #@18
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    #@1b
    move-result-wide v2

    #@1c
    const-wide/16 v4, 0x0

    #@1e
    cmp-long v2, v2, v4

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 74
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    #@25
    move-result-object v2

    #@26
    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@29
    move-result-object v1

    #@2a
    .line 75
    .local v1, "ver":Lorg/apache/http/ProtocolVersion;
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v2}, Lorg/apache/http/params/HttpProtocolParams;->useExpectContinue(Lorg/apache/http/params/HttpParams;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 76
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    #@36
    invoke-virtual {v1, v2}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    #@39
    move-result v2

    #@3a
    if-eqz v2, :cond_2

    #@3c
    .line 66
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v1    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_1
    :goto_0
    return-void

    #@3d
    .line 77
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v1    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_2
    const-string/jumbo v2, "Expect"

    #@40
    const-string/jumbo v3, "100-continue"

    #@43
    invoke-interface {p1, v2, v3}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@46
    goto :goto_0
.end method
