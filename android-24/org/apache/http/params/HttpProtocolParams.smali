.class public final Lorg/apache/http/params/HttpProtocolParams;
.super Ljava/lang/Object;
.source "HttpProtocolParams.java"

# interfaces
.implements Lorg/apache/http/params/CoreProtocolPNames;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    return-void
.end method

.method public static getContentCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;
    .locals 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 100
    if-nez p0, :cond_0

    #@2
    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "HTTP parameters may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 104
    :cond_0
    const-string/jumbo v1, "http.protocol.content-charset"

    #@e
    .line 103
    invoke-interface {p0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    .line 105
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_1

    #@16
    .line 106
    const-string/jumbo v0, "ISO-8859-1"

    #@19
    .line 108
    :cond_1
    return-object v0
.end method

.method public static getHttpElementCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;
    .locals 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 72
    if-nez p0, :cond_0

    #@2
    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "HTTP parameters may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 76
    :cond_0
    const-string/jumbo v1, "http.protocol.element-charset"

    #@e
    .line 75
    invoke-interface {p0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    .line 77
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_1

    #@16
    .line 78
    const-string/jumbo v0, "US-ASCII"

    #@19
    .line 80
    :cond_1
    return-object v0
.end method

.method public static getUserAgent(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 154
    if-nez p0, :cond_0

    #@2
    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 157
    :cond_0
    const-string/jumbo v0, "http.useragent"

    #@e
    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    return-object v0
.end method

.method public static getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;
    .locals 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 129
    if-nez p0, :cond_0

    #@2
    .line 130
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "HTTP parameters may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 133
    :cond_0
    const-string/jumbo v1, "http.protocol.version"

    #@e
    .line 132
    invoke-interface {p0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .line 134
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_1

    #@14
    .line 135
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    #@16
    return-object v1

    #@17
    .line 137
    :cond_1
    check-cast v0, Lorg/apache/http/ProtocolVersion;

    #@19
    .end local v0    # "param":Ljava/lang/Object;
    return-object v0
.end method

.method public static setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "charset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 117
    if-nez p0, :cond_0

    #@2
    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 120
    :cond_0
    const-string/jumbo v0, "http.protocol.content-charset"

    #@e
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@11
    .line 116
    return-void
.end method

.method public static setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "charset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 88
    if-nez p0, :cond_0

    #@2
    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 91
    :cond_0
    const-string/jumbo v0, "http.protocol.element-charset"

    #@e
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@11
    .line 87
    return-void
.end method

.method public static setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 176
    if-nez p0, :cond_0

    #@2
    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 179
    :cond_0
    const-string/jumbo v0, "http.protocol.expect-continue"

    #@e
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    #@11
    .line 175
    return-void
.end method

.method public static setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "useragent"    # Ljava/lang/String;

    #@0
    .prologue
    .line 161
    if-nez p0, :cond_0

    #@2
    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 164
    :cond_0
    const-string/jumbo v0, "http.useragent"

    #@e
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@11
    .line 160
    return-void
.end method

.method public static setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "version"    # Lorg/apache/http/ProtocolVersion;

    #@0
    .prologue
    .line 147
    if-nez p0, :cond_0

    #@2
    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 150
    :cond_0
    const-string/jumbo v0, "http.protocol.version"

    #@e
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@11
    .line 146
    return-void
.end method

.method public static useExpectContinue(Lorg/apache/http/params/HttpParams;)Z
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 168
    if-nez p0, :cond_0

    #@2
    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 172
    :cond_0
    const-string/jumbo v0, "http.protocol.expect-continue"

    #@e
    const/4 v1, 0x0

    #@f
    .line 171
    invoke-interface {p0, v0, v1}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    #@12
    move-result v0

    #@13
    return v0
.end method
