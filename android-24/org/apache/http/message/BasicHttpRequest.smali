.class public Lorg/apache/http/message/BasicHttpRequest;
.super Lorg/apache/http/message/AbstractHttpMessage;
.source "BasicHttpRequest.java"

# interfaces
.implements Lorg/apache/http/HttpRequest;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final method:Ljava/lang/String;

.field private final requestline:Lorg/apache/http/RequestLine;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 60
    invoke-direct {p0}, Lorg/apache/http/message/AbstractHttpMessage;-><init>()V

    #@4
    .line 61
    if-nez p1, :cond_0

    #@6
    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Method name may not be null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 64
    :cond_0
    if-nez p2, :cond_1

    #@11
    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "Request URI may not be null"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 67
    :cond_1
    iput-object p1, p0, Lorg/apache/http/message/BasicHttpRequest;->method:Ljava/lang/String;

    #@1c
    .line 68
    iput-object p2, p0, Lorg/apache/http/message/BasicHttpRequest;->uri:Ljava/lang/String;

    #@1e
    .line 69
    iput-object v0, p0, Lorg/apache/http/message/BasicHttpRequest;->requestline:Lorg/apache/http/RequestLine;

    #@20
    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "ver"    # Lorg/apache/http/ProtocolVersion;

    #@0
    .prologue
    .line 73
    new-instance v0, Lorg/apache/http/message/BasicRequestLine;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    #@5
    invoke-direct {p0, v0}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Lorg/apache/http/RequestLine;)V

    #@8
    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/RequestLine;)V
    .locals 2
    .param p1, "requestline"    # Lorg/apache/http/RequestLine;

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/http/message/AbstractHttpMessage;-><init>()V

    #@3
    .line 78
    if-nez p1, :cond_0

    #@5
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Request line may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 81
    :cond_0
    iput-object p1, p0, Lorg/apache/http/message/BasicHttpRequest;->requestline:Lorg/apache/http/RequestLine;

    #@10
    .line 82
    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lorg/apache/http/message/BasicHttpRequest;->method:Ljava/lang/String;

    #@16
    .line 83
    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lorg/apache/http/message/BasicHttpRequest;->uri:Ljava/lang/String;

    #@1c
    .line 76
    return-void
.end method


# virtual methods
.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpRequest;->requestline:Lorg/apache/http/RequestLine;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 88
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpRequest;->requestline:Lorg/apache/http/RequestLine;

    #@6
    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 90
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/message/BasicHttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public getRequestLine()Lorg/apache/http/RequestLine;
    .locals 4

    #@0
    .prologue
    .line 95
    iget-object v1, p0, Lorg/apache/http/message/BasicHttpRequest;->requestline:Lorg/apache/http/RequestLine;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 96
    iget-object v1, p0, Lorg/apache/http/message/BasicHttpRequest;->requestline:Lorg/apache/http/RequestLine;

    #@6
    return-object v1

    #@7
    .line 98
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/message/BasicHttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    #@e
    move-result-object v0

    #@f
    .line 99
    .local v0, "ver":Lorg/apache/http/ProtocolVersion;
    new-instance v1, Lorg/apache/http/message/BasicRequestLine;

    #@11
    iget-object v2, p0, Lorg/apache/http/message/BasicHttpRequest;->method:Ljava/lang/String;

    #@13
    iget-object v3, p0, Lorg/apache/http/message/BasicHttpRequest;->uri:Ljava/lang/String;

    #@15
    invoke-direct {v1, v2, v3, v0}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    #@18
    return-object v1
.end method
