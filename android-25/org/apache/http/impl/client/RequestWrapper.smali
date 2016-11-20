.class public Lorg/apache/http/impl/client/RequestWrapper;
.super Lorg/apache/http/message/AbstractHttpMessage;
.source "RequestWrapper.java"

# interfaces
.implements Lorg/apache/http/client/methods/HttpUriRequest;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private execCount:I

.field private method:Ljava/lang/String;

.field private final original:Lorg/apache/http/HttpRequest;

.field private uri:Ljava/net/URI;

.field private version:Lorg/apache/http/ProtocolVersion;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpRequest;)V
    .locals 5
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 75
    invoke-direct {p0}, Lorg/apache/http/message/AbstractHttpMessage;-><init>()V

    #@4
    .line 76
    if-nez p1, :cond_0

    #@6
    .line 77
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v3, "HTTP request may not be null"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 79
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/client/RequestWrapper;->original:Lorg/apache/http/HttpRequest;

    #@11
    .line 80
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/client/RequestWrapper;->setParams(Lorg/apache/http/params/HttpParams;)V

    #@18
    .line 82
    instance-of v2, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    #@1a
    if-eqz v2, :cond_1

    #@1c
    move-object v2, p1

    #@1d
    .line 83
    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    #@1f
    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    #@22
    move-result-object v2

    #@23
    iput-object v2, p0, Lorg/apache/http/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    #@25
    .line 84
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    #@27
    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    iput-object v2, p0, Lorg/apache/http/impl/client/RequestWrapper;->method:Ljava/lang/String;

    #@2d
    .line 85
    iput-object v3, p0, Lorg/apache/http/impl/client/RequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    #@2f
    .line 97
    :goto_0
    const/4 v2, 0x0

    #@30
    iput v2, p0, Lorg/apache/http/impl/client/RequestWrapper;->execCount:I

    #@32
    .line 74
    return-void

    #@33
    .line 87
    .restart local p1    # "request":Lorg/apache/http/HttpRequest;
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    #@36
    move-result-object v1

    #@37
    .line 89
    .local v1, "requestLine":Lorg/apache/http/RequestLine;
    :try_start_0
    new-instance v2, Ljava/net/URI;

    #@39
    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@40
    iput-object v2, p0, Lorg/apache/http/impl/client/RequestWrapper;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 94
    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    iput-object v2, p0, Lorg/apache/http/impl/client/RequestWrapper;->method:Ljava/lang/String;

    #@48
    .line 95
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@4b
    move-result-object v2

    #@4c
    iput-object v2, p0, Lorg/apache/http/impl/client/RequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    #@4e
    goto :goto_0

    #@4f
    .line 90
    :catch_0
    move-exception v0

    #@50
    .line 91
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v2, Lorg/apache/http/ProtocolException;

    #@52
    new-instance v3, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v4, "Invalid request URI: "

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    .line 92
    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    invoke-direct {v2, v3, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6d
    throw v2
.end method


# virtual methods
.method public abort()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getExecCount()I
    .locals 1

    #@0
    .prologue
    .line 168
    iget v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->execCount:I

    #@2
    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->method:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOriginal()Lorg/apache/http/HttpRequest;
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->original:Lorg/apache/http/HttpRequest;

    #@2
    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 1

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 119
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    #@6
    return-object v0

    #@7
    .line 121
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/RequestWrapper;->getParams()Lorg/apache/http/params/HttpParams;

    #@a
    move-result-object v0

    #@b
    invoke-static {v0}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getRequestLine()Lorg/apache/http/RequestLine;
    .locals 4

    #@0
    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/apache/http/impl/client/RequestWrapper;->getMethod()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 140
    .local v0, "method":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/RequestWrapper;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@7
    move-result-object v2

    #@8
    .line 141
    .local v2, "ver":Lorg/apache/http/ProtocolVersion;
    const/4 v1, 0x0

    #@9
    .line 142
    .local v1, "uritext":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/http/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 143
    iget-object v3, p0, Lorg/apache/http/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    #@f
    invoke-virtual {v3}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 145
    .end local v1    # "uritext":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    #@15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_2

    #@1b
    .line 146
    :cond_1
    const-string/jumbo v1, "/"

    #@1e
    .line 148
    :cond_2
    new-instance v3, Lorg/apache/http/message/BasicRequestLine;

    #@20
    invoke-direct {v3, v0, v1, v2}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    #@23
    return-object v3
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    #@2
    return-object v0
.end method

.method public incrementExecCount()V
    .locals 1

    #@0
    .prologue
    .line 172
    iget v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->execCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->execCount:I

    #@6
    .line 171
    return-void
.end method

.method public isAborted()Z
    .locals 1

    #@0
    .prologue
    .line 156
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    #@0
    .prologue
    .line 164
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public resetHeaders()V
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->headergroup:Lorg/apache/http/message/HeaderGroup;

    #@2
    invoke-virtual {v0}, Lorg/apache/http/message/HeaderGroup;->clear()V

    #@5
    .line 103
    iget-object v0, p0, Lorg/apache/http/impl/client/RequestWrapper;->original:Lorg/apache/http/HttpRequest;

    #@7
    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/RequestWrapper;->setHeaders([Lorg/apache/http/Header;)V

    #@e
    .line 100
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 111
    if-nez p1, :cond_0

    #@2
    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Method name may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 114
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/client/RequestWrapper;->method:Ljava/lang/String;

    #@d
    .line 110
    return-void
.end method

.method public setProtocolVersion(Lorg/apache/http/ProtocolVersion;)V
    .locals 0
    .param p1, "version"    # Lorg/apache/http/ProtocolVersion;

    #@0
    .prologue
    .line 126
    iput-object p1, p0, Lorg/apache/http/impl/client/RequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    #@2
    .line 125
    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 135
    iput-object p1, p0, Lorg/apache/http/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    #@2
    .line 134
    return-void
.end method
